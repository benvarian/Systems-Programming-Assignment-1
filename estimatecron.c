//  CITS2002 Project 1 2022
//  Student1:   23215049   Varian   Benjamin
//  Student2:   23164864   Lindsay  Daniel

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <fcntl.h>
#include <unistd.h>
#include <strings.h>

#include <ctype.h>

#define BUFFER_SIZE 100

int mostFreq = 0;
int totalNum = 0;
int anyTime = 0;

typedef struct
{
    int id;
    char minute[1024];
    char hour[1024];
    char date[1024];
    char month[1024];
    char dayofWeek[1024];
    char task[50];
} task;
typedef struct
{
    int id;
    char task[50];
    int minutes;
} time;

int daysinmonth(char N[])
{
    // for (int i = 0; i < 3; i++){
    //     printf("%d: %s",i,N);
    // }

    // printf("is digit ->%c\n",test);
    int x = atoi(N);

    if (strcmp(N, "feb") == 0)
    {
        return 28;
    }
    else if ((strcmp(N, "jan") == 0) || (strcmp(N, "mar") == 0) || (strcmp(N, "may") == 0) || (strcmp(N, "jul") == 0) || (strcmp(N, "aug") == 0) || (strcmp(N, "oct") == 0) || (strcmp(N, "dec") == 0) || (x == 0) || (x == 2) || (x == 4) || (x == 6) || (x == 7) || (x == 9) || (x == 11))
    {
        return 31;
    }
    else if ((strcmp(N, "apr") == 0) || (strcmp(N, "jun") == 0) || (strcmp(N, "sep") == 0) || (strcmp(N, "nov") == 0) || (*N == '3') || (x == 5) || (x == 8) || (strcmp(N, "10") == 0))
    {
        return 30;
    }
    else if (x > 11)
    {
        return 0;
    }
    else
    {
        return 0;
    }

    // if (N == 1 || N == 'jan' || N == 3 || N = 'mar' || N == 5  || N == 7 || N == 8 || N == 10 || N == 12)
    // {
    //     return 31;
    // }
    // else if (N == 4 || N == 6 || N == 9 || N == 11)
    // {
    //     return 30;
    // }
    // else if (N == 2)
    // {
    //     return 28;
    // }
    // else
    // {
    //     printf("Invalid Month.");
    //     return 0;
    // }
}

void output()
{
    printf("most frequently executed program: %d\n", mostFreq);
    printf("total number of commands invoked: %d\n", totalNum);
    printf("max number of commands running at any time: %d\n", anyTime);
}

void print(task task)
{
    printf("id:%d\n min:%s\n hour:%s\n date:%s\n month:%s\n day:%s\n task:%s\n", task.id, task.minute, task.hour, task.date, task.month, task.dayofWeek, task.task);
}
bool cronfile(char cron[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(cron, "r");
    task croning;
    int i = 1;

    if (fp == NULL)
    {
        // printf("Error Opening File: crontab-file\n");
        // exit(EXIT_FAILURE);
        return false;
    }
    else
    {
        while (fgets(line, BUFFER_SIZE, fp) != NULL)
        {
            if (strchr(line, '#') != NULL)
            {
                continue;
            }
            // printf("%s\n", line);
            croning.id = i;
            sscanf(line, "%s %s %s %s %s %s", croning.minute, croning.hour, croning.date, croning.month, croning.dayofWeek, croning.task);
            i++;
            // printf("id:%d\n min:%s\n hour:%s\n date:%s\n month:%s\n day:%s\n task:%s\n", croning.id, croning.minute, croning.hour, croning.date, croning.month, croning.dayofWeek, croning.task);
            // print(croning);
        }
    }
    fclose(fp);
    return true;
}
bool estimeFile(char estim[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(estim, "r");
    time time;
    int i = 1;
    // int len = 0;
    if (fp == NULL)
    {
        return false;
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

    fclose(fp);
    return true;
}

int main(int argc, char *argv[])
{
    if (argc != 4)
    {
        printf("Usage: ./estimatecron <month> <crontab-file> <estimates-file>");
    }
    else
    {
        if (cronfile(argv[2]) == 0)
        {
            printf("Error Opening File: crontab-file\n");
            exit(EXIT_FAILURE);
        }
        else if (estimeFile(argv[3]) == 0)
        {
            printf("Error Opening File: estim-file\n");
            exit(EXIT_FAILURE);
        }

        if (daysinmonth(argv[1]) == 0)
        {
            printf("Please input a valid month, 0-11!!\n");
            printf("Usage: ./estimatecron <month> <crontab-file> <estimates-file>\n");
            exit(EXIT_FAILURE);
        } else {printf("%d",daysinmonth(argv[1]));}


        // output();
    }
}
