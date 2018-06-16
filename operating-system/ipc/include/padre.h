#include <sys/types.h>

char* get_newline(char* p_file_s1, int my_string, int* length);
void padre(char* file_path, char* file_out_path);
int sizeofFile(char* file_path);
int check_keys(char* p_file_s1, void* p_s2, int file_lines);
void save_keys(char* path, void* p_s2, int lines);
void* attach_segments(key_t key, int size);
int load_file(char* file_path, char* shmem);
int detach_segments(key_t key, int mem_size, void* shmaddr);