#include "../include/padre.h"
#include "../include/utils.h"
#include "../include/types.h"
#include "../include/logger.h"
#include "../include/figlio.h"

// shared memory
#include <sys/shm.h>
#include <sys/ipc.h>
#include <sys/types.h>

// process
#include <sys/wait.h>
#include <stdlib.h>

// file
#include <fcntl.h>

// read
#include <unistd.h>

// perror
#include <stdio.h>

// const
#include "../include/defines.h"

int test = 0;

void padre(char* file_path, char* file_out_path) {

    // intercetto tutte le signal
    signal(SIGINT,  signal_error_handler);  /* CRTRL + C*/
	signal(SIGTERM, signal_error_handler);  /* General Terminal Signal */
	signal(SIGQUIT, signal_error_handler);  /* CRTRL + \ */
	signal(SIGSEGV, signal_error_handler);  /* Segmentation Fault */
	signal(SIGTSTP, signal_error_handler);  /* CRTRL + Z */

    // provo a usare il file input. se NON va arresto
    HANDLE_ERROR(access(file_path, F_OK | R_OK), "padre.c", "impossibile leggere file input");
    
    // variabili
    struct Status *status;
    char *p_file_s1;
    char *p_file_s2;

    // dim file per memoria condivisa
    const int file_lines           = sizeofFile(file_path);                 /* Contatore righe del file */
    const int file_size            = file_lines * BYTE_FOR_INPUT_FILE_ROW;  /* Dimensione file da allocare in S1 */
    const int file_and_struct_size = file_size + sizeof(struct Status);     /* Dimensione totale da allocare in S1 */
    const int file_output_size     = (file_lines * sizeof(unsigned));       /* Dimensione totale da allocare in S2 */

    // segmento S1 (file + struct)
    void* p_s1 = attach_segments(SHM_IN_KEY, file_and_struct_size);

    // segmento S2 (file output)
    void* p_s2 = attach_segments(SHM_OUT_KEY, file_output_size);

    // struct Status dentro S1
    status = (struct Status*) p_s1;
    status -> id_string = 0;
    status -> grandson  = 0;

    // puntatore al file in S1
    p_file_s1  = (char*) (p_s1 + sizeof(struct Status));

    // puntatore al file in S2
    p_file_s2 = (char*) p_s2;

    // Carico il file in memoria
    HANDLE_ERROR(load_file(file_path, p_file_s1), "padre.c", "impoissibile caricare il file_input in S1");

    // genero i sottoprocessi logger e figlio
    pid_t child_logger = fork();

    if(child_logger == -1) {
        HANDLE_ERROR(-1, "padre.c", "impossibile creare fork logger");
    }

    if(child_logger == 0) {
        logger();
    }
    else
    {
        pid_t child_figlio  = fork();

        if(child_figlio == -1) {
            HANDLE_ERROR(-1, "padre.c", "impossibile creare fork figlio");
        }

        if(child_figlio == 0) {
            figlio(p_s1, p_s2, file_lines);
        }
        else
        {
            // solo il padre è qua

            // attendo i figli
            wait(&child_logger);
            wait(&child_figlio);

            // Controllo che le chiavi generate siano corrette e le salvo
            if (check_keys(p_file_s1, p_s2, file_lines) == 1) {
                save_keys(file_out_path, p_s2, file_lines);
            } else {
                print_line("Ho trovato una chiave calcolata sbagliata!");
            }

            // elimino i segmenti
            detach_segments(SHM_IN_KEY, file_and_struct_size, p_s1);
            detach_segments(SHM_OUT_KEY, file_output_size, p_s2);

            exit(0);
        }
    }
}

void* attach_segments(key_t key, int size) {

    // alloco la memoria con la key specificata
    int res_shmem = shmget(key, size, PERMIX|IPC_CREAT);
    if(res_shmem == -1) {
        HANDLE_ERROR(-1, "padre.c", "impossibile eseguire shmget");
    }

    // collego lo spazio di memoria
    void *ptr = shmat(res_shmem, NULL, 0);
    if (ptr == (void *) -1) {
        HANDLE_ERROR(-1, "padre.c", "impossibile eseguire shmat");
        return (void*) -1;
    }

    return (void*) ptr;
}

int detach_segments(key_t key, int mem_size, void* shmaddr) {

    // recupero l'id della memoria con la get
    int mem_id = shmget(key, mem_size, PERMIX);

    // scollego il segmento
    HANDLE_ERROR(shmdt(shmaddr), "padre.c", "impossibile eseguire il detach shmctl");

    // elimino il segmento
    HANDLE_ERROR(shmctl(mem_id, IPC_RMID, NULL), "padre.c", "impossibile eseguire il detach shmctl");

    return 1;
}

int load_file(char* file_path, char* p_file_s1) {

    // buffer
    char buffer[BUFFER_SIZE];

    // apro il file
    int fd;
    HANDLE_ERROR( (fd = open(file_path, O_RDONLY, PERMIX)), "padre.c", "impossibile aprire il file_input");

    int readed = -1;
    int totale = 0;

    while ( (readed = read(fd, buffer, BUFFER_SIZE)) > 0)  {
        int i;
        for(i = 0; i < readed; i++, totale++) { 
            p_file_s1[totale] = buffer[i];
        }
    }

    // chiudo il file
    HANDLE_ERROR( close(fd), "padre.c", "impossibile chiudere il file_input"); 

    return 1;
}

int sizeofFile(char* file_path) {
    char buffer[BUFFER_SIZE];

    // apro il file
    int fd;
    HANDLE_ERROR( (fd = open(file_path, O_RDONLY, PERMIX)), "padre.c", "impossibile aprire il file_input"); 

    int lines = 0;
    int n = 0;
    int offset = 0;
    while((n = read(fd, buffer, BUFFER_SIZE)) > 0) {
        int i;
        for ( i = 0; i < n; i++, offset++) {
            if (buffer[i] == '>') {
                lines++;
                i += offset + 3;

                offset = 0;

                if (i > n) {
                    lseek(fd, i - n + 1, SEEK_CUR);
                }
            }
        }
    }

    // chiudo il file
    HANDLE_ERROR( close(fd), "padre.c", "impossibile chiudere il file_input"); 

    return lines;
}


int check_keys(char* p_file_s1, void* p_s2, int file_lines) {
    int line = 0;

    while (line != file_lines) {
        int  length     = 0;
        char *clear     = get_newline(p_file_s1, line, &length);
        char *encrypted = load_encoded(clear);
        unsigned *key   = (unsigned *)(p_s2 + (line * sizeof(unsigned)));

        while(*clear == '>') {
            length++;
        }

        // Sto analizzando la i-esima stringa
        line++;

        // Verifica della chiave (inversa)
        int i;
        for (i = 0; i < length; (i += 4)) {
            unsigned *c = (unsigned *) (clear);
            unsigned *e = (unsigned *) (encrypted);


            if ( (*e ^ *key) != *c) {
                return -1;
            }
 
            clear += 4;
            encrypted += 4;
        }
    }

    return 1;

}

char* get_newline(char* p_file_s1, int my_string, int* length) {
    
    int current_line = 0;

    // ciclo finchè trovo il primo '>'
    //
    // 012345678901234
    // <CIAO>;<####>rn
    //      ^
    //
    // dopodichè mi sposto del doppio + 4 (windows, +3 linux), e sono a una nuova riga plain
    // perchè l'encoded è il doppio del pian

    int i;
    for(i = 0; current_line != my_string; i++) {
        if(p_file_s1[i] == '>') {

            current_line++;

            p_file_s1 = p_file_s1 + i + i + 4;

            i = 0;
        }
    }

    return p_file_s1;
}

void save_keys(char* path, void* p_s2, int lines) {
    
    // apro il file
    int fd;
    HANDLE_ERROR( (fd = creat(path, O_RDWR ^ PERMIX)), "padre.c", "impossibile aprire il file_output"); 

    int i;
    for (i = 0; i < lines; i++) {

        int       offset  = (i * sizeof(unsigned));
        unsigned* key     = (unsigned *) (p_s2 + offset);
        char*     s_key   = unsigned_to_string(*key);

        write(fd,  "0x", 2);
        write(fd, s_key, 8); // sempre da 8
        write(fd,  "\r", 1); // togliere se i file sono unix
        write(fd,  "\n", 1);

        free(s_key);
    }

    // chudo il file
    HANDLE_ERROR( close(fd), "padre.c", "impossibile chiudere il file_output"); 
}