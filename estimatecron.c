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
int nrunning = 0;
typedef struct
{
    int id;
    char minute[3];
    char hour[3];
    char date[3];
    char month[3];
    char dayofWeek[4];
    char task[50];
} task;
typedef struct
{
    int id;
    char task[50];
    int minutes;
} time;

typedef struct
{
    int id;
    int minute;
    int hour;
    int date;
    int month;
    int dayofWeek;
    char task[50];
    int minutes;
    // change name
} final;

int daytoInt(char x[])
{
    if (strcmp(x, "sun") == 0 || strcmp(x, "*") == 0)
    {
        return 0;
    }
    else if (strcmp(x, "mon") == 0)
    {
        return 1;
    }
    else if (strcmp(x, "tue") == 0)
    {
        return 2;
    }
    else if (strcmp(x, "wed") == 0)
    {
        return 3;
    }
    else if (strcmp(x, "thu") == 0)
    {
        return 4;
    }
    else if (strcmp(x, "fri") == 0)
    {
        return 5;
    }
    else if (strcmp(x, "sat") == 0)
    {
        return 6;
    }
    else
    {
        return -1;
    }
}
int datetoInt(char x[])
{
    if (strcmp(x, "*") == 0)
    {
        return 0;
    }
    else
    {
        return -1;
    }
}
int amountofLines(char filename[])
{
    FILE *fp = fopen(filename, "r");
    char line[BUFFER_SIZE];
    // counts amount of lines in the trimmed down file, which allows for dynamic struct sizing
    int count = 0;
    while (fgets(line, BUFFER_SIZE, fp) != NULL)
    {
        if (strchr(line, '#') != NULL)
        {
            continue;
        }
        count++;
    }
    return count;
}
int daysinmonth(char N[])
{
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
}
int monthinDigit(char month[])
{
    printf("%s\n", month);
    // int x = atoi(month);
    if (strcmp(month, "jan") == 0)
    {
        return 0;
    }
    else if (strcmp(month, "feb") == 0)
    {
        return 1;
    }
    else if (strcmp(month, "mar") == 0)
    {
        return 2;
    }
    else if (strcmp(month, "apr") == 0)
    {
        return 3;
    }
    else if (strcmp(month, "may") == 0)
    {
        return 4;
    }
    else if (strcmp(month, "jun") == 0)
    {
        return 5;
    }
    else if (strcmp(month, "jul") == 0)
    {
        return 6;
    }
    else if (strcmp(month, "aug") == 0)
    {
        return 7;
    }
    else if (strcmp(month, "sep") == 0)
    {
        return 8;
    }
    else if (strcmp(month, "oct") == 0)
    {
        return 9;
    }
    else if (strcmp(month, "nov") == 0)
    {
        return 10;
    }
    else if (strcmp(month, "dec") == 0)
    {
        return 11;
    }
    else
    {
        return -1;
    }
}

void output()
{
    printf("most frequently executed program: %d\n", mostFreq);
    printf("total number of commands invoked: %d\n", totalNum);
    printf("max number of commands running at any time: %d\n", anyTime);
}

int matchforcronandEstim(time t[], size_t x){
    for (int i =0; i < x; i++){
        printf("%d: %s\n", t[i].minutes, t[i].task);
    }
    return 0;
}

void convert(task task[], size_t x, char month[])
{
    // TODO put all this into a new struct with ints as the format

    // ! TODO to the conversions for every field.
    // int dayofweek = 0;
    // int date = 0;
    for (int i = 0; i < x; i++)
    {
        // TODO change for different months obsiosuly
        if (strcmp(task[i].month, "dec") == 0 || strcmp(task[i].month, "*") == 0)
        {
            // TODO deal with bad input
            // ! converting dayofweek to integer
            // dayofweek = daytoInt(task[i].dayofWeek);
            // printf("%d:%s\n", dayofweek, task[i].dayofWeek);
            // convert date to int
            if (strcmp(task[i].date, "*") == 0)
            {
                // printf("%d\n", datetoInt(task[i].date));
                // date = datetoInt(task[i].date);
                // printf("%d: %s\n", date, task[i].date);
            }
            // printf("id:%d\n min:%s\n hour:%s\n date:%s\n month:%s\n day:%s\n task:%s\n", task[i].id, task[i].minute, task[i].hour, task[i].date, task[i].month, task[i].dayofWeek, task[i].task);
        }
    }
}

bool cronfile(char cron[], char month[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(cron, "r");

    task croning[amountofLines(cron)];
    int x = sizeof(croning) / sizeof(*croning);
    int i = 1;
    int j = 0;

    if (fp == NULL)
    {
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
            croning[j].id = i;
            sscanf(line, "%s %s %s %s %s %s", croning[j].minute, croning[j].hour, croning[j].date, croning[j].month, croning[j].dayofWeek, croning[j].task);

            i++;
            j++;
            // printf("id:%d\n min:%s\n hour:%s\n date:%s\n month:%s\n day:%s\n task:%s\n", croning.id, croning.minute, croning.hour, croning.date, croning.month, croning.dayofWeek, croning.task);
        }
    }
    convert(croning, x, month);
    fclose(fp);
    return true;
}
bool estimeFile(char estim[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(estim, "r");
    time t[amountofLines(estim)];
    int i = 1;
    // struct index
    int j = 0;
    int x = sizeof(t) / sizeof(*t);

    // check if file can be opened 
    if (fp == NULL)
    {
        return false;
    }

    while (fgets(line, BUFFER_SIZE, fp) != NULL)
    {
        if (strchr(line, '#') != NULL)
        {
            continue;
        }
        t[j].id = i;
        sscanf(line, "%s %d", t[j].task, &t[j].minutes);
        i++;
        // printf("id:%d\n task:%s\n min:%d\n", time[j].id, time[j].task, time[j].minutes);
        j++;
    }
    matchforcronandEstim(t,x);
    fclose(fp);
    return true;
}

int main(int argc, char *argv[])
{
    if (argc != 4)
    {
        printf("Usage: ./estimatecron <month> <crontab-file> <estimates-file>\n");
    }
    else
    {
        if (cronfile(argv[2], argv[1]) == 0)
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
        }
        else
        {
            // rundate(daysinmonth(argv[1]))
        }

        // output();
    }
}
