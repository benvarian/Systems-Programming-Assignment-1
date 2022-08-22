//  CITS2002 Project 1 2022
//  Student1:   23215049   Varian   Benjamin
//  Student2:   STUDENT-NUMBER2   Linsday  Daniel

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <fcntl.h>
#include <unistd.h>

int mostFreq = 0;
int totalNum = 0;
int anyTime = 0;

void output()
{
    printf("most frequently executed program: %d\n", mostFreq);
    printf("total number of commands invoked: %d\n", totalNum);
    printf("max number of commands running at any time: %d\n", anyTime);
}

bool fileReader(char cron[], char estim[])
{
    int firstFd = open(cron, O_RDONLY);
    int secondFd = open(estim, O_RDONLY);

    if (firstFd == -1)
    {
        printf("Error Opening File: crontab-file\n");
        return false;
    }
    else if (secondFd == -1)
    {
        printf("Error Opening File: estimates-file\n");
        return false;
    }
    close(firstFd);
    close(secondFd);
    return true;
}



int main(int argc, char *argv[])
{
    if (argc != 4)
    {
        printf("Usage: ./estimatecron month crontab-file estimates-file");
    }
    else
    {
        if (fileReader(argv[2], argv[3]))
        {
            // continue with program
            
        }
        else
        {
            exit(EXIT_FAILURE);
        }
    }

    // output();
}