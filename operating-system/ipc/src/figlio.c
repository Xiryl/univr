#include "../include/utils.h"
#include "../include/types.h"

// thread
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

// header
#include "../include/figlio.h"
#include "../include/nipote.h"

// const
#include "../include/defines.h"

// globals
struct Status *status;
int semid;
struct sembuf *sops;

void figlio(void* p_s1, void* p_s2, int file_lines) 
{
    // assegno la signal SIGUSR1 a status_updated
    signal(SIGUSR1, status_updated);

    // Alloco la struct per le operazioni sul semaforo
    sops = (struct sembuf *) malloc (sizeof(struct sembuf));

    // creo il semaforo
    HANDLE_ERROR( (semid = semget(SEM_KEY, SEM_QTA, 0666|IPC_CREAT|IPC_EXCL)), "figlio.c", "impossibile creare ill semaforo");

    // Imposto il semaforo
    sops->sem_num = 0;
    sops->sem_op  = 1;
    sops->sem_flg = 0;

    // eseguo l'op
    HANDLE_ERROR( semop(semid, sops, 1), "figlio.c", "impossibile eseguire l'op sul semaforo 1");

    // Imposto il semaforo 2
    sops->sem_num = 1;
    sops->sem_op  = 0;
    sops->sem_flg = 0;

    // eseguo l'op 2
    HANDLE_ERROR( semop(semid, sops, 1), "figlio.c", "impossibile eseguire l'op sul semaforo 2");
    
    // Struct status del S1
    status = (struct Status*) p_s1;
    
    #ifdef MULTITHREAD

    // parte multithread
    struct params t_params[THREAD_QTA];
    pthread_t threads[THREAD_QTA];

    // lancio le threads
    int i;
    for(i = 0; i < THREAD_QTA; i++) {

        t_params[i].thread_id = (i+1);
        t_params[i].p_s1 = p_s1;
        t_params[i].p_s2 = p_s2;
        t_params[i].file_lines = file_lines;

        HANDLE_ERROR( pthread_create(&threads[0], NULL , nipote, (void*) &t_params[i]), "figlio.c", "impossibile eseguire la thread");
    }

    // aspetto le thread
    for(i = 0; i < THREAD_QTA; i++) {
        pthread_join(threads[i], NULL);
    }

    #else
    
    // NO THREAD   

    struct params n_params[NIPOTI_QTA];
    pid_t pid_nipoti[NIPOTI_QTA]; 

    int i;
    for(i = 0; i < NIPOTI_QTA; i++) {
        n_params[i].thread_id = (i+1);
        n_params[i].p_s1 = p_s1;
        n_params[i].p_s2 = p_s2;
        n_params[i].file_lines = file_lines;

        HANDLE_ERROR( ( pid_nipoti[i] = fork() ), "figlio.c", "impossibile eseguire la fork");

        if( pid_nipoti[i] == 0 ) {
            // chiamo il nipote i^esimo
            nipote((void*) &n_params[i]);
        }  
    }

    // aspetto i figli
    for(i = 0; i < NIPOTI_QTA; i++) {
        wait(&pid_nipoti[i]);
    }

    #endif

    // Lancio la send_terminate
    send_terminate();

    // Rimuovo il semaforo
    remove_sem(semid);

    // fine figlio.c
    exit(0);
}

void status_updated(int _signal) 
{
    // recupero i campi grandson e id_string dalla memoria condivisa
    // dentro la struct Status
    int _grandson = status->grandson;
    int _id_string = status->id_string;

    if (_signal == SIGUSR1) {
        char *grandson = int_to_array(status->grandson);
        char *idString = int_to_array(status->id_string);
        char *str1 = strcct("Il nipote ", grandson);
        char *str2 = strcct(str1, " sta analizzando la ");
        char *str3 = strcct(str2, idString);
        char *str4 = strcct(str3, "-esima stringa.");

        print_line(str4);

        free(grandson);
        free(str1);
        free(str2);
        free(str3);
        free(str4);
        free(idString);
    }

    unlock(1, semid, sops);
}

void send_terminate() 
{
    // creo il messaggio nella struct
    struct Message msg_to_send;
    fill_message(&msg_to_send, "ricerca conclusa", 16);

    // aggiungo alla coda il messaggio con MTYPE = 1
    HANDLE_ERROR( msgsnd( get_msg_id() , &msg_to_send, sizeof(struct Message) - sizeof(long), 0),
    "figlio.c", "impossibile aggiungiere il messaggio nella coda dei messaggi");
}

int get_msg_id() 
{
    // ottengo l'id della coda dei messaggi
    int msg_id;
    HANDLE_ERROR( (msg_id = msgget(MESSAGE_QUEUE_KEY, 0666)), "figlio.c", "impossibile creare la coda dei messaggi");

    return msg_id;
}

void fill_message(struct Message *msg, char* value, int length) 
{
    int i;
    for(i = 0; i < length; i++) {
        msg->text[i] = value[i];
    }

    // aggiungo terminatore di riga \0
    msg->text[i+1] = '\0';

    // il tipo di messaggio deve essere 1
    msg->mtype = 1;
}

void remove_sem(int semid) {
    HANDLE_ERROR( semctl(semid, 0, IPC_RMID, NULL), "figlio.c", "impossibile eliminare il semaforo");
}