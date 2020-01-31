/**
 * @file utils.h 
 * @brief File contenente le funzioni di appoggio utilizzate all'interno dell'elaborato
 * @author Chiarani Fabio - VR408541
 */

/** @name funzioni*/
/*@{ */

/** @brief ottiene la quantita' di caratteri presenti dentro un unsigned */
/** @param [unsigned msg] unsigned da calcolare la sua length */
/** @return [int] lunghezza */
int get_unsigned_length(unsigned msg);

/** @brief converte un intero in stringa */
/** @param [int n] numero da convertire */
/** @return [char *] numero convertito in stringa */
char *int_to_array(int n);

/** @brief ottiene la lunghezza di una stirnga */
/** @param [char *str] stringa da calcolare */
/** @return [int] lunghezza */
int strsize(char *str);

/** @brief concatena due stringhe */
/** @param [char *str1] stringa 1 */
/** @param [char *str2] stringa 2 */
/** @return [car *] stringhe concatenate */
char *strcct(char *str1, char *str2);

/** @brief copia una stringa in un'altra */
/** @param [char *str1] stringa 1 */
/** @param [char *str2] stringa 2 */
/** @return [void] */
void strcp(char *str1, char *str2);

/** @brief converte un unsigned in stringa */
/** @param [unsigned msg] unsigned da convertire */
/** @return [char*] unsigned in stringa */
char* unsigned_to_string(unsigned msg);

/** @brief cerca la parte encoded di una stringa */
/** @param [char *txt] stringa con formato <plain>;<encoded> */
/** @return [char*] puntaore al primo valore encoded */
char* load_encoded(char *txt);

/** @brief simula una printf con \n */
/** @param [char *msg] messaggio da stampare */
/** @return [void] */
void print_line(char *msg);

/** @brief gestisce la signal in caso di errore libera tutte le risorse e termina \n */
/** @param [int sig] segnale ricevuto */
/** @return [void] */
void signal_error_handler(int sig);

/** @brief elimina tutte le risorse (semfori, memorie codnivise, code dei messaggi) \n */
/** @return [void] */
void detach_all_resources();

/** @brief stampa a video un messaggio di errore \n */
/** @param [char *file] file che ha generato l'errore */
/** @param [char *message] errore da stampare */
/** @return [void] */
void print_error(char *file, char *message);

/** @brief stampa a video un messaggio di errore (1 va a buon fine, -1 gestisce l'errore)\n */
/** @param [int res] valore di ritorno di una system call generica (1 va a buon fine, -1 gestisce l'errore) */
/** @param [char *file] file che ha generato l'errore */
/** @param [char *message] errore da stampare */
/** @return [void] */
void HANDLE_ERROR(int res, char* file, char* message);
/*@} */