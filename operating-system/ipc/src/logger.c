#include "../include/logger.h"
#include "../include/utils.h"
#include "../include/types.h"

// shared memory
#include <sys/msg.h>
#include <sys/ipc.h>
#include <sys/types.h>

// process
#include <sys/wait.h>
#include <stdlib.h>

// file
#include <fcntl.h>

// bread
#include <unistd.h>

#include <stdio.h>

// const
#include "../include/defines.h"

void handle_alarm(int sig_num) {
    if (sig_num == SIGALRM) {
        return;
    }
}

void logger() {

    // intercetto l'alarm
    signal(SIGALRM, handle_alarm);

    // creo la coda dei messaggi
    int msg_id;
    HANDLE_ERROR( (msg_id = msgget(MESSAGE_QUEUE_KEY, (0666|IPC_CREAT|IPC_EXCL))), "logger.c", "impossibile creare la coda dei messaggi");
 
    // polling sulla msg queue
    while(polling_receive(msg_id) != 1) {
        alarm(1);
        pause();
        alarm(0);
    }

    // rimuovo la coda
    HANDLE_ERROR(msgctl(msg_id, IPC_RMID, NULL), "logger.c", "impossibile cancellare la coda");

    //fine
    exit(0);
}

int polling_receive(int msg_id) {
    struct Message message;
    int msg_size = sizeof(struct Message);

    // ciclo sulla rcv
    while ((msgrcv(msg_id, &message, msg_size, 0, IPC_NOWAIT)) >= 0) {

        // TIPO 1, ESCO
        if (message.mtype == 1) {
            return 1;
        }

        if (message.text[127] != '\0') {
            // sostituisco l'ultimo carattere con il terminatore
            message.text[127] = '\0';
        }

        print_line(message.text);
    };

    return 0;
}