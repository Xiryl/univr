/**
 * @file types.h 
 * @brief File contenente le stutture utilizzate
 * @author Chiarani Fabio - VR408541
 */

/** @name costanti*/


#define MESSAGE_SIZE 128

/** @name strutture*/
/*@{ */

/** @brief struttura di stato del processo */
/** @param [int grandson] id del nipote */
/** @param [int id_string] id della stringa che sta analizzando */
struct Status {
    int grandson;
    int id_string;
};

/** @brief struttura del messaggio da depositare sulla coda dei messaggi */
/** @param [long mtype] tipo del messaggio */
/** @param [char text[MESSAGE_SIZE]] testo da depositare */
struct Message {
    long mtype;
    char text[MESSAGE_SIZE];
};

/** @brief struttura di parametri utilizzata per passarli da figlio.c a nipote.c */
/** @param [int thread_id] id del thread o del processo */
/** @param [void* p_s1] puntatore al segmento S1 della memoria condivisa */
/** @param [void* p_s2] puntatore al segmento S2 della memoria condivisa */
/** @param [int file_lines] quantità di righe presente nel file */
struct params {
    int thread_id;
    void* p_s1;
    void* p_s2;
    int file_lines;
};

/*
struct sembuf {
    short sem_num;
    short sem_op;
    short sem_flg;
};
*/

/*@} */