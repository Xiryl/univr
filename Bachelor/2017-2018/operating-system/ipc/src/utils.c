#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

// shared memory & message queue
#include <sys/shm.h>
#include <sys/msg.h>
#include <sys/ipc.h>
#include <sys/types.h>

// signal
#include <signal.h>

// semafori
#include <sys/sem.h>

#include "../include/utils.h"
#include "../include/defines.h"

void print_line(char *msg) {
    int OUT = 0;

    char *strWithNewline = strcct(msg, "\n");
    write(OUT, strWithNewline, strsize(strWithNewline));
    free(strWithNewline);
}

char* unsigned_to_string(unsigned msg) {
    unsigned n = msg;
    int lunghezza = 0;
    while(n != 0){
        n = n / 16;
        lunghezza++;
    }

    char *string = (char *) malloc( sizeof(char)*8 );
    int tmp = lunghezza - 8;


    int i;
    for(i = 0; i < 8; i++) {
        string[i] = '0';
    }

    i = 0;
    for(i = lunghezza - tmp - 1; i >= 0; i--) {

        if((msg % 16) <= 9){
            string[i] = (char) (msg % 16) + '0';
        }
        else{
            string[i] = (char) ((msg % 16) - 10) + 'A';
        }

        msg = msg/16;
    }

    return string; 

}

int strsize(char *str) {
    int n;
    for (n = 0; str[n] != '\0'; n++);
    return n;
}

char *int_to_array(int n) {
    int tmp = n;
    int digits = 0;
    do {
        digits++;
    } while((tmp /= 10) != 0);

    char *result = (char *)malloc((sizeof(char) * digits) + 1);
    int i;
    for (i = digits - 1; i >= 0; i--) {
        int digit = (n % 10);
        result[i] = (char)(digit + '0');
        n /= 10;
    }

    result[digits] = '\0';
    return result;
}

char *strcct(char *str1, char *str2) {
    int len1 = strsize(str1);
    int len2 = strsize(str2);
    int newStringSize = len1 + len2 + 1;
    int newStringIndex = 0;
    char *result = (char *)malloc(sizeof(char) * newStringSize);

    int i;
    for ( i = 0; i < len1; i++, newStringIndex++) {
        result[newStringIndex] = str1[i];
    }

    for ( i = 0; i < len2; i++, newStringIndex++) {
        result[newStringIndex] = str2[i];
    }

    result[newStringIndex] = '\0';
    return result;
}

void strcp(char *str1, char *str2) {
    int i;
    for(i = 0; *str2 != '\0'; str1++, str2++, i++){
        *str1 = *str2;
    }
    i++;
    *str1++ = '\0';
}

char* load_encoded(char *txt) {
    char* _encoded_text = txt;

    while(*_encoded_text != ';') {
        _encoded_text++;
    }
    _encoded_text = (_encoded_text   + 2);

    return _encoded_text;
}

// HANDLE_ERROR((msgget(...)), "logger.c", "errore crazione logger");
void HANDLE_ERROR(int res, char* file, char* message) {
    if( res == -1 ) {
        // errore, stampo a video e libero le risorse
        print_error(file, message);


        // (Signal Interrupt) Interactive attention signal. Generally generated by the application user.
        kill(0, SIGINT);

        // libero tutte le risorse
        detach_all_resources();
    }
}


void print_error(char *file, char *message)
{
    int OUT = 0;

    char *e = " errore: ";

    write(OUT, file, strsize(file));
    write(OUT, e, strsize(e));
    write(OUT, message, strsize(message));

    perror("system error");
}


void detach_all_resources() {
    int msg_id = msgget(MESSAGE_QUEUE_KEY, PERMIX);
    int sem_id = semget(SEM_KEY, SEM_QTA, PERMIX);
    int sh1_id = shmget(SHM_IN_KEY, 0, PERMIX);
    int sh2_id = shmget(SHM_OUT_KEY, 0, PERMIX);

    msgctl(msg_id, IPC_RMID, NULL);
    shmctl(sh1_id, IPC_RMID, NULL);
    shmctl(sh2_id, IPC_RMID, NULL);
    semctl(sem_id, 1, IPC_RMID, NULL);
}

void signal_error_handler(int sig) {
    detach_all_resources();
    exit(1);
}