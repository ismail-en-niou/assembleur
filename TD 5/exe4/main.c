#include <stdio.h>
#include <unistd.h>
int main(int argc, char const *argv[])
{
    int i , pid ;
    for (int i = 1; i <=3; i++)
    {
        pid = fork();
        if (pid < 0)
            exit(1);
        else{
            printf("%d",getpid());
            execl("/bin/ps","ps" , NULL);
        }
    }
    
    return 0;
}
