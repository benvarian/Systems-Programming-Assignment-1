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

char mostFreq[50];
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
    int duration;

} crontab;

int daytoInt(char x[])
{

    if (strcmp(x, "sun") == 0)
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
    else if (strcmp(x, "*") == 0)
    {
        return 7;
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

bool validMonth(char N[])
{
    char *months[] = {"jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "oct", "sep", "nov", "dec"};
    int valid = 0;

    if (isdigit(N[0]) == 1)
    {
        if ((atoi(N) >= 12 || atoi(N) < 0))
        {
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        for (int i = 0; N[i]; i++)
        {
            N[i] = tolower(N[i]);
        }
        for (int i = 0; i < sizeof(months) / sizeof(months[0]); i++)
        {
            if ((strcmp(months[i], N)) == 0)
            {
                ++valid;
            }
        }
    }
    if (valid > 0)
    {
        return true;
    }
    else
        return false;
}

int daysinMonth(char N[])
{
    int x = atoi(N);
    for (int i = 0; N[i]; i++)
    {
        N[i] = tolower(N[i]);
    }
    printf("%s", N);
    if (strcmp(N, "feb") == 0 || x == 1)
    {
        return 28;
    }
    if ((strcmp(N, "apr") == 0) || (strcmp(N, "jun") == 0) || (strcmp(N, "sep") == 0) || (strcmp(N, "nov") == 0) || (x == 3) || (x == 5) || (x == 8) || (strcmp(N, "10") == 0))
    {
        return 30;
    }
    if ((strcmp(N, "jan") == 0) || (strcmp(N, "mar") == 0) || (strcmp(N, "may") == 0) || (strcmp(N, "jul") == 0) || (strcmp(N, "aug") == 0) || (strcmp(N, "oct") == 0) || (strcmp(N, "dec") == 0) || (x == 0) || (x == 2) || (x == 4) || (x == 6) || (x == 7) || (x == 9) || (x == 11))
    {
        return 31;
    }

    if (x > 11)
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
    else if (strcmp(month, "*") == 0)
    {
        return -1;
    }
    else
    {
        return 12;
    }
}
bool matches(task task[], time time[], size_t x)
{
    int match = 0;
    for (int i = 0; i < x; i++)
    {

        for (int j = 0; j < x; j++)
        {

            if (strcmp(task[i].task, time[j].task) == 0)
            {
                match++;
            }
        }
    }
    if (match == x)
    {
        return true;
    }
    else
    {
        return false;
    }
}
void timeTest(crontab f[], char month[])
{
    // for (int i = 0; i < 0; i++)
    // {
    //     printf("id:%d\n task:%s\n dur:%d\n min:%d\n hour:%d\n date:%d\n month:%d\n day:%d\n", f[i].id, f[i].task, f[i].duration, f[i].minute, f[i].hour, f[i].date, f[i].month, f[i].dayofWeek);
    // }
    int dMonth = daysinMonth(month);
    printf("%d", dMonth);
    // printf("id:%d\n task:%s\n dur:%d\n min:%d\n hour:%d\n date:%d\n month:%d\n day:%d\n", f->id, f->task, f->duration, f->minute, f->hour, f->date, f->month, f->dayofWeek);
}
crontab *convert(task task[], time time[], size_t x, char month[])
{
    crontab *f = malloc(sizeof(crontab) * (int)x);
    int mon = 0;
    if (!isdigit(month[0]))
    {
        mon = monthinDigit(month);
    }
    else
    {
        mon = atoi(month);
    }
    if ((matches(task, time, x)))
    {
        for (int i = 0; i < x; i++)
        {

            for (int j = 0; j < x; j++)
            {
                if (strcmp(task[i].task, time[j].task) == 0 && (mon == atoi(task[i].month) || atoi(task[i].month) == 0))
                {

                    f[i].id = i;
                    memcpy(f[i].task, task[i].task, 50);
                    if (strcmp(task[i].minute, "*") == 0)
                    {
                        f[i].minute = -1;
                    }
                    else
                    {
                        sscanf(task[i].minute, "%d", &f[i].minute);
                    }
                    if (strcmp(task[i].hour, "*") == 0)
                    {
                        f[i].hour = -1;
                    }
                    else
                    {
                        sscanf(task[i].hour, "%d", &f[i].hour);
                    }
                    if (strcmp(task[i].date, "*") == 0)
                    {
                        f[i].date = 0;
                    }
                    else
                    {
                        sscanf(task[i].date, "%d", &f[i].date);
                    }
                    if (strcmp(task[i].month, "*") == 0 || !isdigit(task[i].month[0]))
                    {
                        f[i].month = monthinDigit(task[i].month);
                    }
                    else
                    {
                        sscanf(task[i].month, "%d", &f[i].month);
                    }
                    if (strcmp(task[i].dayofWeek, "*") == 0)
                    {

                        f[i].dayofWeek = daytoInt(task[i].dayofWeek);
                    }
                    else
                    {

                        sscanf(task[i].dayofWeek, "%d", &f[i].dayofWeek);
                    }
                    f[i].duration = time[j].minutes;

                    // printf("id:%d\n task:%s\n dur:%d\n min:%d\n hour:%d\n date:%d\n month:%d\n day:%d\n", f[i].id, f[i].task, f[i].duration, f[i].minute, f[i].hour, f[i].date, f[i].month, f[i].dayofWeek);
                }
            }
        }
    }
    else
    {
        printf("Unable to run program, please enter a matching set of crontab and estim files and make sure there in the right order!!\n");
        exit(EXIT_FAILURE);
    }
    return f;
}
task *cronfile(char cron[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(cron, "r");
    int i = 1;
    int j = 0;
    // dynmaically allocate the right amonut of space for the task struct to be held
    task *c = malloc(sizeof(task) * amountofLines(cron));
    // checking if malloc fails
    if (c == NULL)
    {
        printf("Cannot allocate the required bytes of memory\n");
        exit(EXIT_FAILURE);
    }

    if (fp == NULL)
    {
        printf("Error Opening File: crontab-file\n");
        exit(EXIT_FAILURE);
    }
    else
    {
        while (fgets(line, BUFFER_SIZE, fp) != NULL)
        {
            if (strchr(line, '#') != NULL)
            {
                continue;
            }
            c[j].id = i;
            sscanf(line, "%s %s %s %s %s %s", c[j].minute, c[j].hour, c[j].date, c[j].month, c[j].dayofWeek, c[j].task);
            i++;
            j++;
        }
    }

    fclose(fp);
    return c;
}

time *estimeFile(char estim[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    fp = fopen(estim, "r");
    time *t = malloc(sizeof(time) * amountofLines(estim));
    int i = 1;
    int j = 0;
    // checking if malloc fails
    if (t == NULL)
    {
        printf("Cannot allocate the required bytes of memory\n");
        exit(EXIT_FAILURE);
    }
    // check if file can be opened
    if (fp == NULL)
    {
        printf("Error Opening File: estim-file\n");
        exit(EXIT_FAILURE);
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
        j++;
    }

    fclose(fp);
    return t;
}

int main(int argc, char *argv[])
{
    if (argc != 4)
    {
        printf("Usage: ./estimatecron <month> <crontab-file> <estimates-file>\n");
    }
    else
    {
        if (!(validMonth(argv[1])))
        {
            printf("Please input a valid month, 0->11 or jan->dec!!\n");

            exit(EXIT_FAILURE);
        }
        else
        {
            timeTest(convert(cronfile(argv[2]), estimeFile(argv[3]), amountofLines(argv[3]), argv[1]), argv[1]);
        }
    }
}
