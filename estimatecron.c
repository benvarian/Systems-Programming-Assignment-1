//  CITS2002 Project 1 2022
//  Student1:   23215049   Varian   Benjamin
//  Student2:   23164864   Lindsay  Daniel

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <fcntl.h>
#include <unistd.h>
#include <strings.h>

#define BUFFER_SIZE 100

int mostFreq = 0;
int totalNum = 0;
int anyTime = 0;

struct task
{
    int id;
    char minute[1024];
    char hour[1024];
    char date[1024];
    char month[1024];
    char dayofWeek[1024];
    char task[50];
};
struct time
{
    int id;
    char task[50];
    int minutes;
};

int daysinmonth(int N)
{

    if (N == 1 || N == 3 || N == 5 || N == 7 || N == 8 || N == 10 || N == 12)
    {
        return 31;
    }
    else if (N == 4 || N == 6 || N == 9 || N == 11)
    {
        return 30;
    }
    else if (N == 2)
    {
        return 28;
    }
    else
    {
        printf("Invalid Month.");
        return 0;
    }
}

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
void print(struct task task)
{
    
    // for (int i = 0; i < (sizeof(task->task) / sizeof(task->task[0])); i++)
    // {
    //     printf("%d -> %s\n", i,task->task);
    // }
    printf("id:%d\n min:%s\n hour:%s\n date:%s\n month:%s\n day:%s\n task:%s\n", task.id, task.minute, task.hour, task.date, task.month, task.dayofWeek, task.task);
    
}
struct task cronfile(char cron[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(cron, "r");

    struct task croning;

    int i = 1;

    if (fp == NULL)
    {
        // TODO CHANE THE PRINT TO BE IN THE MAIN FUNCTION
        printf("Error Opening File: crontab-file\n");
        exit(EXIT_FAILURE);
    }
    while (fgets(line, BUFFER_SIZE, fp) != NULL)
    {
        if (strchr(line, '#') != NULL)
        {
            continue;
        }

        // printf("%s\n", line);
        croning.id = i;

        sscanf(line, "%s %s %s %s %s %s", croning.minute, croning.hour, croning.date, croning.month, croning.dayofWeek, croning.task);

        // printf("%d", i);
        // printf("%d: %s\n", croning.id, croning.minute);
        i++;
        // printf("id:%d\n min:%s\n hour:%s\n date:%s\n month:%s\n day:%s\n task:%s\n", croning.id, croning.minute, croning.hour, croning.date, croning.month, croning.dayofWeek, croning.task);
        print(croning);
    }

    fclose(fp);
    return croning;

}
struct time estimeFile(char estim[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(estim, "r");
    struct time time;
    int i = 1;
    // int len = 0;
    if (fp == NULL)
    {
        exit(EXIT_FAILURE);
    }
    // if (fp != NULL)
    // {
    //     fseek(fp, 0, SEEK_END);
    //     len = ftell(fp);
    //     if (len == 0)
    //     {
    //         return false;
    //     } else {}
    //     printf("%d", len);
    // }
    // fseek(fp, 0, SEEK_SET);
    while (fgets(line, BUFFER_SIZE, fp) != NULL)
    {
        if (strchr(line, '#') != NULL)
        {
            continue;
        }
        time.id = i;
        sscanf(line, "%s %d", time.task, &time.minutes);
        i++;
        // printf("id:%d\n task:%s\n min:%d\n", time.id, time.task, time.minutes);
    }

    // if (time.id < 1)
    // {
    //     return false;
    // }
    fclose(fp);
    return time;
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
            // printf("%s\n",argv[1]);
            // continue with program
            cronfile(argv[2]);
            estimeFile(argv[3]);

            // output();
        }
        else
        {
            exit(EXIT_FAILURE);
        }
    }

    // output();
}
