#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char* argv []){
    int fd = open("fifo2",O_RDWR|O_CREAT);
    
    char msg_read[15] ;
    char msg_write[15];
    while(1){
        int size = read(fd,msg_read,15);
        printf("%s\n",msg_read);
        printf("enter message : ");
        fgets(msg_write, 15, stdin);
        write(fd,msg_write,15);
    }
    return 0;
}

