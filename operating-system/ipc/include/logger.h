/**
 * @file logger.h 
 * @brief File contenente le funzioni del processo logger.c
 * @author Chiarani Fabio - VR408541
 */

/** @name Funzioni*/
/*@{ */

/** @brief legge in pooling (1 s) dalla coda dei messaggi e stampa a video il campo msg.text */
/** @param [int msg_id] id della coda dei messaggi */
/** @return [int] se mtype !=1 ritorna 1 e continua il polling */
int polling_receive(int msg_id);

/** @brief wrapper del processo logger */
/** @return [void] */
void logger();

/** @brief funzione invocata quando riceve un segnale. Elabora la SIGALARM per gestire il polling */
/** @param [int sig_num] segnale ricevuto*/
/** @return [void] */
void handle_alarm(int sig_num);
/*@} */