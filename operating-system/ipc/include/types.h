// struct utilizzata nel padre.c

#define MESSAGE_SIZE 128

struct Status {
    int grandson;
    int id_string;
};

struct Message {
    long mtype;
    char text[MESSAGE_SIZE];
};

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