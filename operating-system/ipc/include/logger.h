/** @file logger.h
 *  @brief Header contente le funzioni del logger.c
 */

/** @name Funzioni*/
/*@{ */

/** @brief legge in pooling (1s) dalla coda dei messaggi e stampa a video il campo msg.text */
/** @param [int msg_id] id della coda dei messaggi */
/** @return [int] se mtype !=1 ritorna 1 e continua il polling */
int polling_receive(int msg_id);

/** @brief wrapper del processo logger */
/** @return [void] */
void logger();

/** @brief wrapper del processo logger */
/** @return [void] */
void handle_alarm(int sig_num);
/*@} */