/**
 * @file nipote.h 
 * @brief File contenente le funzioni del processo nipote.c
 * @author Chiarani Fabio - VR408541
 */


/** @name Funzioni*/
/*@{ */

/** @brief deposita il messaggio "chiave trovata in X secondi" nella coda dei messaggi del processo logger */
/** @param [time_t time] tempo in secondi da depositare */
/** @return [void] */
void send_timeelapsed(time_t time);

/** @brief ritorna un puntatore all'inizio della stringa da processare presa dal segmento S1 in memoria condivisa */
/** @param [char* p_s1] puntatore alla memoria condivisa */
/** @param [int my_string] offset della riga da processare */
/** @return [char *] ritorna un puntatore all'inizio della stringa in memoria */
char *load_string(char* p_s1, int my_string);

/** @brief funzione di appoggio per ottenere il tempo attuale */
/** @return [time_t] ritorna il timestamp */
time_t get_timestamp();

/** @brief cerca l'inizio della parte encoded della stringa */
/** @param [char *txt] puntatore alla stringa (presente in memoria condivisa S1) */
/** @return [char*] ritorna un puntatore all'inizio della stringa encoded */
char* load_encoded(char *txt);

/** @brief cerca la chiave utilizzata per cifrare la stringa encoded */
/** @param [char* plain_text] puntatore alla stringa plain_text */
/** @param [char* encoded_text] puntatore alla stringa encoded_text */
/** @return [unsigned] ritorna la chiave trovata */
unsigned find_key(char* plain_text, char* encoded_text);

/** @brief salva in memoria S2 la chiave appena trovata */
/** @param [unsigned key] chiave da salvare */
/** @param [void* p_s2] puntatore al segmento S2 in memoria condivisa */
/** @return [void] */
void save_key(unsigned key, void* p_s2);

/** @brief incrementa il semaforo mutex */
/** @param [int id] id del semaforo da incrementare */
/** @param [int semid] id riotnato dalla get dei semafori */
/** @param [struct sembuf *sops] struct del semaforo da eseguire l'operaziine */
/** @return [void] */
void lock(int id, int semid, struct sembuf *sops);

/** @brief decrementa il semaforo mutex */
/** @param [int id] id del semaforo da incrementare */
/** @param [int semid] id riotnato dalla get dei semafori */
/** @param [struct sembuf *sops] struct del semaforo da eseguire l'operaziine */
/** @return [void] */
void unlock(int id, int semid, struct sembuf *sops);

/** @brief wrapper del processo nipote */
/** @param [void* params] struct di parametri */
/** @return [void*] */
void* nipote(void* params);

/*@} */