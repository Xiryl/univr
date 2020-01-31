#include "../include/utils.h"
#include "../include/types.h"

#ifdef MULTITHREAD
#include <pthread.h>
#endif

// shared memory
#include <sys/shm.h>
#include <sys/ipc.h>
#include <sys/types.h>

// code dei messaggi
#include <sys/msg.h>

// process
#include <sys/wait.h>
#include <stdlib.h>

// semafori
#include <sys/sem.h>

// signal
#include <signal.h>

// read
#include <unistd.h>
#include <stdio.h>

// time
#include <sys/time.h>

// header
#include "../include/nipote.h"

// const
#include "../include/defines.h"

//global
int msg_id; /* coda messaggi */

void* nipote(void* params) {

    // ricevo i parametri
    struct params *my_params = (struct params *) params;

    // setto i parametri
    void* p_s1     = (void*) my_params->p_s1;
    void* p_s2     = (void*) my_params->p_s2;
    int file_lines = (int)   my_params->file_lines;
    int id_nipote  = (int)   my_params->thread_id;

    struct Status *status = (struct Status*) p_s1;                  /* puntatore a status nel S1 */
    char   *p_file_s1     = (char*) (p_s1 + sizeof(struct Status)); /* puntatore all'inizo del file nel S1 */
    int    my_string      = 0;                                      /* valore della my_string */
    int    semid;                                                   /* semaforo */                                               
    struct timespec ts;                                             /* per il calcolo del time */

    // alloco lo spazio per il semaforo
    struct sembuf *sops = (struct sembuf *) malloc (sizeof(struct sembuf));

    // ottengo l'id della coda dei messaggi
    HANDLE_ERROR( (msg_id = msgget(MESSAGE_QUEUE_KEY, PERMIX)), "nipote.c", "impossibile ottenere la coda dei messaggi");

    // ottengo il semaforo
    HANDLE_ERROR( (semid = semget(SEM_KEY, SEM_QTA, PERMIX|IPC_EXCL)), "nipote.c", "impossibile ottenere il semaforo");

    // *MUTEX*
    lock(0, semid, sops);

    //salvo id_string dentro my_string
    my_string = status->id_string;
    
    unlock(0, semid, sops);
    // *END-MUTEX*

    // ciclo finchè non vedo tutte le righe
    while(my_string < file_lines ) {

        if(my_string < file_lines) {

            // *MUTEX*
            lock(0, semid, sops);

            // aggiorno la struct status
            status->grandson = id_nipote;
            status->id_string++;   

            #ifdef MULTITHREAD
                 kill(getpid(), SIGUSR1);
            #else
                kill(getppid(), SIGUSR1);
            #endif
           
            lock(1, semid, sops);
            unlock(0, semid, sops);
            // *END-MUTEX*
        }
        else {
            #ifdef MULTITHREAD
                pthread_exit(NULL);
            #else
                exit(0);
            #endif   
        }

        // leggo la riga nuova
        char *text          = load_string(p_file_s1, my_string) + 1;
        char *_plain_text   = text;                 /* puntatore all'inizio del plain text */
        char *_encoded_text = load_encoded(text);   /* puntatore all'inizio del encoded text */

        // ricerco la key
        unsigned key = find_key(_plain_text, _encoded_text);

        // salvo la key trovata e chiamo la timeellapsed()
        save_key(key, (p_s2 + (my_string * sizeof(unsigned))));

        // *MUTEX*
        lock(0, semid, sops);

        // salvo my_string
        my_string = status->id_string;

        unlock(0, semid, sops);
        // *END-MUTEX*
    }

    #ifdef MULTITHREAD
        pthread_exit(NULL);
    #else
        exit(0);
    #endif    
}

void send_timeelapsed(time_t s_time) {
    struct Message end_message;
    end_message.mtype = 2;
    char *message = "chiave trovata in ";

    char *timeToString = int_to_array(s_time);

    char *concat = strcct(message, timeToString);
    strcp(end_message.text, concat);

    // msgsnd
    HANDLE_ERROR( msgsnd(msg_id, &end_message, sizeof(struct Message), 0), "nipote.c", "impossibile inviare il messaggio nella coda dei messaggi");

    free(timeToString);
    free(concat);
}

char *load_string(char* p_file_s1, int my_string) {
    
    int current_line = 0;

    // ciclo finchè trovo il primo '>'
    //
    // 01234567890123
    // <CIAO>;<####>n
    //      ^
    //
    // dopodichè mi sposto del doppio + 4, e sono a una nuova riga plain
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


unsigned find_key(char* plain_text, char* encoded_text) {
    time_t start = get_timestamp();

    unsigned  key_to_find = 0;

    unsigned* plain  = (unsigned *) plain_text; 
    unsigned* encode = (unsigned *) encoded_text; 
    
    // guardo solo il primo gruppo unsigned
    while((*plain ^ key_to_find) != *encode) {
        key_to_find++;
    }

    send_timeelapsed(get_timestamp() - start);
    return key_to_find;
}

time_t get_timestamp() {
    struct timeval timer;
    gettimeofday(&timer, NULL);

    return timer.tv_sec;
}

void save_key(unsigned key, void* p_s2) {
    unsigned* tmp = (unsigned *) p_s2;
    *tmp = key;
}

void lock(int id, int semid, struct sembuf *sops) {
    // setto il semaforo
    sops->sem_num = id;
    sops->sem_op  = -1;
    sops->sem_flg = 0;

    HANDLE_ERROR( semop(semid, sops, 1), "nipote.c", "impossibile eseguire l'op lock sul semaforo");
}

void unlock(int id, int semid, struct sembuf *sops) {
    // setto il semaforo
    sops->sem_num = id;
    sops->sem_op  = +1;
    sops->sem_flg = 0;

    HANDLE_ERROR( semop(semid, sops, 1), "nipote.c", "impossibile eseguire l'op unlock sul semaforo");
}
