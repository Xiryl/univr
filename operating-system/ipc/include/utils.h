int get_unsigned_length(unsigned msg);
char *itoa(int n);
int strsize(char *str);
char *strcct(char *str1, char *str2);
void strcp(char *str1, char *str2);
int unsignedLength(unsigned value);
char* unsigned_to_string(unsigned msg);
char* load_encoded(char *txt);
void print_line(char *msg);
void signal_error_handler(int sig);
void detach_all_resources();
void print_error(char *file, char *message);
void HANDLE_ERROR(int res, char* file, char* message);