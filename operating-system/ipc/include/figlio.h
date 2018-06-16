/** @file figlio.h
 *  @brief Header contente le funzioni del figlio.c
 */

/** @name Funzioni*/
/*@{ */

/** @brief scrive il messaggio "ricerca conclusa" nella coda dei messaggi con mtype = 1 */
/** @return [void] */
void send_terminate();

/** @brief stampa a video "il nipote X sta analizzando la Y-esima riga */
/** @return [void] */
void status_updated();

/** @brief ritorna l'id della coda dei messaggi */
/** @return [int] ritorna l'id se la coda viene creata con successo */
int get_msg_id();

/** @brief rimuove il semaforo */
/** @param [int semid] id del semaforo da rimuovere*/
/** @return [void] */
void remove_sem(int semid);

/** @brief wrapper del processo figlio */
/** @param [void* shm_in] puntatore al segmento S1 della memoria condivisa */
/** @param [void* shm_out] puntatore al segmento S2 della memoria condivisa */
/** @param [int file_lines] numero di righe del file da elaborare */
/** @return [void] */
void figlio(void* shm_in, void* shm_out, int file_lines);

/** @brief funzione di appoggio che scrive il messaggio dentro la struct message */
/** @param [struct Message *msg] puntatore alla struct message */
/** @param [char* value] messaggio da inserire nel campo message.text */
/** @param [int length] lunghezza messaggio */
/** @return [void] */
void fill_message(struct Message *msg, char* value, int length);

/*@} */