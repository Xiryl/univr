/**
 * @file defines.h 
 * @brief File contenente le costanti utilzzate
 * @author Chiarani Fabio - VR408541
 */

/** @name Costanti */

/**
 * @def BUFFER_SIZE
 * Costante indicante la dimensione del buffer per la read()
 */
#ifndef BUFFER_SIZE
#define BUFFER_SIZE 512
#endif

/**
 * @def BYTE_FOR_INPUT_FILE_ROW
 * Costante indicante i byte massimi necessari per ogni riga di input
 */
#ifndef BYTE_FOR_INPUT_FILE_ROW
#define BYTE_FOR_INPUT_FILE_ROW 1030
#endif

/**
 * @def BYTE_FOR_OUTPUT_FILE_ROW
 * Costante indicante i byte massimi necessari per ogni riga di output
 */
#ifndef BYTE_FOR_OUTPUT_FILE_ROW
#define BYTE_FOR_OUTPUT_FILE_ROW 11
#endif

/**
 * @def SHM_IN_KEY
 * Costante indicante la key per creare il segmento in memoria S1
 */
#ifndef SHM_IN_KEY
#define SHM_IN_KEY 000001
#endif

/**
 * @def SHM_OUT_KEY
 * Costante indicante la key per creare il segmento in memoria S2
 */
#ifndef SHM_OUT_KEY
#define SHM_OUT_KEY 000002
#endif

/**
 * @def MESSAGE_QUEUE_KEY
 * Costante indicante la key per creare la memoria condivisa
 */
#ifndef MESSAGE_QUEUE_KEY
#define MESSAGE_QUEUE_KEY 888888
#endif

/**
 * @def SEM_KEY
 * Costante indicante la key per creare il semaforo
 */
#ifndef SEM_KEY
#define SEM_KEY 555555
#endif

/**
 * @def SEM_QTA
 * Costante indicante la quantità di semafori da creare
 */
#ifndef SEM_QTA
#define SEM_QTA 2
#endif

/**
 * @def THREAD_QTA
 * Costante indicante la quantità di (nipoti)thread generare dal processo figlio
 */
#ifndef THREAD_QTA
#define THREAD_QTA 4
#endif

/**
 * @def NIPOTI_QTA
 * Costante indicante la quantità di nipoti)fork generare dal processo figlio
 */
#ifndef NIPOTI_QTA
#define NIPOTI_QTA 2
#endif