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
    int minute;
    int hour;
    int date;
    int month;
    int dayofWeek;
    char task[20];
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
void print(const struct task *self)
{
    printf("%d , %d", (*self).id, (*self).minute);
}
bool cronfile(char cron[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(cron, "r");

    struct task croning;

    int i = 0;

    if (fp == NULL)
    {
        printf("Error Opening File: crontab-file\n");
        return false;
    }
    while (fgets(line, BUFFER_SIZE, fp) != NULL)
    {
        if (strchr(line, '#') != NULL)
        {
            continue;
        }
        if (strchr(line, '\n') != NULL)
        {
            if (strchr(line, ' ') != NULL)
            {
               croning.id = 1;
               croning.minute = 45;
                // fscanf(fp, "%d %d %d %d %d %d %c", &croning.id, &croning.minute, &croning.hour, &croning.date, &croning.month, &croning.dayofWeek, croning.task);
            }

            // printf("%d", i);

            i++;
        }
        print(&croning);
        // printf("%d %d %d %d %d %d %s\n", croning.id, croning.minute, croning.hour, croning.date, croning.month, croning.dayofWeek, croning.task);
    }
    return true;

    fclose(fp);
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
            // output();
            cronfile(argv[2]);
        }
        else
        {
            exit(EXIT_FAILURE);
        }
    }

    // output();
}
