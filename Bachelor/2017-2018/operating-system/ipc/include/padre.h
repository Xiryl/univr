/**
 * @file padre.h 
 * @brief File contenente le funzioni del processo padre.c
 * @author Chiarani Fabio - VR408541
 */

#include <sys/types.h>

/** @name Funzioni*/
/*@{ */

/** @brief ottine il puntatore alla riga sucessiva presente in memoria S1 */
/** @param [char* p_file_s1] puntatore al segmento in memoria S1 */
/** @param [int my_string] offset della riga che si vuole ottenere */
/** @param [int* length] righe totali della memoria */
/** @return [char*] puntatore alla riga trovata */
char* get_newline(char* p_file_s1, int my_string, int* length);

/** @brief wrapper del processo padre */
/** @param [char* file_path] input file path */
/** @param [char* file_out_path] output file path */
/** @return [void] */
void padre(char* file_path, char* file_out_path);

/** @brief calcola il numero di righe del file */
/** @param [char* file_path] input file path */
/** @return [int] numero righe trovate */
int sizeofFile(char* file_path);

/** @brief calcola che le chiavi trovate siano giuste per tutta la lunghezza */
/** @param [char* p_file_s1] puntatore alla memoria condivisa S1 */
/** @param [void* p_s2] puntatore alla memoria condivisa S2 */
/** @param [int file_lines] righe totali */
/** @return [int] 1 se andato a buon fine, -1 se trovata una chiave non corretta */
int check_keys(char* p_file_s1, void* p_s2, int file_lines);

/** @brief salva le chiavi trovate nel file output */
/** @param [char* path] path file output */
/** @param [void* p_s2] puntatore alla memoria condivisa S2 */
/** @param [int lines] righe totali da salvare */
/** @return [void] */
void save_keys(char* path, void* p_s2, int lines);

/** @brief crea e attacca il segmento di memoria al processo */
/** @param [key_t key] chiave per creare il segmento */
/** @param [int size] dimensione del segmento */
/** @return [void*] */
void* attach_segments(key_t key, int size);

/** @brief crea e attacca il segmento di memoria al processo */
/** @param [char* file_path] path del file */
/** @param [char* shmem] dimensione del segmento S1 */
/** @return [int] 1 andato a buon fine, senno' -1*/
int load_file(char* file_path, char* shmem);

/** @brief scollega ed elimina il segmento dal processo */
/** @param [key_t key] chiave per creare il segmento */
/** @param [int size] dimensione del segmento */
/** @param [void* shmaddr] puntatore al segmento */
/** @return [int] funzione andata a buon fine 1, senno' -1*/
int detach_segments(key_t key, int mem_size, void* shmaddr);

/*@} */