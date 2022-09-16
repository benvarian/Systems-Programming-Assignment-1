//  CITS2002 Project 1 2022
//  Student1:   23215049   Varian   Benjamin
//  Student2:   23164864   Lindsay  Daniel


// 

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <strings.h>
#include <ctype.h>
#include <time.h>

#include <stdbool.h>

#define BUFFER_SIZE 100

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
} estim;

typedef struct
{
    int id;
    int minute;
    int hour;
    int date;
    int month;
    int dayofWeek;
    char task[500];
    int duration;
    int occur;

} crontab;

int daytoInt(char x[])
{
    // convert the day of the week to an int ranging from 0-6 and if the supplied charater is * meaning all return -1 allowing the program later
    // to call the task every day

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
    // checks early on in the program to see if the month supplied is valid or not
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
    // allows for the days in the month to be returned
    int x = atoi(N);
    for (int i = 0; N[i]; i++)
    {
        N[i] = tolower(N[i]);
    }
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
    // converts months to digits
    if (strcmp(month, "jan") == 0)
    {
        return 0;
    }
    if (strcmp(month, "feb") == 0)
    {
        return 1;
    }
    if (strcmp(month, "mar") == 0)
    {
        return 2;
    }
    if (strcmp(month, "apr") == 0)
    {
        return 3;
    }
    if (strcmp(month, "may") == 0)
    {
        return 4;
    }
    if (strcmp(month, "jun") == 0)
    {
        return 5;
    }
    if (strcmp(month, "jul") == 0)
    {
        return 6;
    }
    if (strcmp(month, "aug") == 0)
    {
        return 7;
    }
    if (strcmp(month, "sep") == 0)
    {
        return 8;
    }
    if (strcmp(month, "oct") == 0)
    {
        return 9;
    }
    if (strcmp(month, "nov") == 0)
    {
        return 10;
    }
    if (strcmp(month, "dec") == 0)
    {
        return 11;
    }
    else
    {
        return 12;
    }
}
bool matches(task task[], estim time[], size_t x)
{
    // matches the two files tasks and if the value doesnt match one of the files is wrong
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

int weekdayValue(int day, int month)
{
    int ret;
    int value = 0;
    struct tm info;
    char buffer[3];
    // need to do this to keep the values from reutrning weird values
    memset(&info, 0, sizeof(info));
    info.tm_year = 2022 - 1900;
    info.tm_mon = month;
    info.tm_mday = day;
    info.tm_hour = 0;
    info.tm_min = 0;
    info.tm_sec = 0;
    info.tm_isdst = -1;
    ret = mktime(&info);
    // chekcs if the time supplied is invalid and quits if it is
    if (ret == -1)
    {
        printf("Error: unable to make time using mktime\n");
        exit(EXIT_FAILURE);
    }
    // reads in the day of the week with the config of %w into the buffer and converts the buffer into a int value
    strftime(buffer, sizeof(buffer), "%w", &info);
    sscanf(buffer, "%d", &value);

    return value;
}

crontab *convert(task task[], estim t[], size_t x, char month[])
{
    // if this is done wrong for structs please tell me
    crontab *f = (crontab *)malloc(sizeof(crontab));
    int size = 0;
    int mon;
    if (!isdigit(month[0]))
    {
        mon = monthinDigit(month);
    }
    else
    {
        mon = atoi(month);
    }
    // check for malloc failure
    if (f == NULL)
    {
        printf("malloc failed");
        exit(EXIT_FAILURE);
    }
    // if the estim file and cron tab file have the same amount of matching tasks run
    if ((matches(task, t, x)))
    {
        // two initialiser for loops
        for (int i = 0; i < x; i++)
        {
            for (int j = 0; j < x; j++)
            {
                // if the task.task is equal to a task in t it stops and goes through the conversion process
                if ((strcmp(task[i].task, t[j].task) == 0))
                {
                    f[i].id = i;
                    f[i].duration = t[i].minutes;

                    // shows an error but compiles and runs fine
                    strcpy(f[i].task, task[j].task);
                    // if the value is equal to *, (running all the time), assing a value otherwise read it in
                    if (strcmp(task[j].minute, "*") == 0)
                    {
                        f[i].minute = -1;
                    }
                    else
                    {
                        sscanf(task[j].minute, "%d", &f[i].minute);
                    }

                    if (strcmp(task[j].hour, "*") == 0)
                    {
                        f[i].hour = 0;
                    }
                    else
                    {
                        sscanf(task[j].hour, "%d", &f[i].hour);
                    }

                    if (strcmp(task[j].date, "*") == 0)
                    {
                        f[i].date = 0;
                    }
                    else
                    {
                        sscanf(task[j].date, "%d", &f[i].date);
                    }

                    if (strcmp(task[j].month, "*") == 0)
                    {

                        f[i].month = mon;
                    }
                    else
                    {
                        sscanf(task[j].month, "%d", &f[i].month);
                    }
                    f[i].dayofWeek = daytoInt(task[j].dayofWeek);
                    size++;
                }
            }
            // checks the outer extremeties of the date making sure its valid inside the month
            if (f[i].date > daysinMonth(month) || f[i].date < 0)
            {
                printf("invalid date for %s\n", f[i].task);
                exit(EXIT_FAILURE);
            }
        }
        // free the structs as we no longer need them.
        free(task);
        free(t);

        int nrunning = 0;
        // holds the amount of days in a month
        int diM = daysinMonth(month);
        // simulates the days in the month
        // obviously missing the invoke and finished functions but ran out of time and partner didnt help at all
        for (int i = 1; i < diM; i++)
        {
            // simulates through the 24 hours of the day
            for (int k = 0; k < 24; k++)
            {
                // simulates through the 60 minutes in a hour
                for (int l = 0; l < 60; l++)
                {
                    // couldnt get nrunning to work but if it was to be implemented it would be here
                    if (nrunning >= 20)
                        break;
                    // looping thorugh all the elements
                    for (int j = 0; j < size; j++)
                    {
                        // if the task time matches the simulated time
                        if ((f[j].date == i || f[j].date == 0) && (f[j].hour == k || f[j].hour == 0) && (f[j].minute == l || f[j].minute == -1) && f[j].month == mon)
                        {
                            // matches the task to run on the day that it is allocated in the week
                            if (f[j].dayofWeek == -1 || weekdayValue(i, mon) == f[j].dayofWeek)
                            {
                                f[j].occur += 1;
                            }
                        }
                    }
                }
            }
        }
    }

    else
    {
        printf("Unable to run program, please enter a matching set of crontab and estim files and make sure there in the right order!!\n");
        exit(EXIT_FAILURE);
    }
    int occurances = 0;
    for (int i = 0; i < size; i++)
    {
        // keeps the odd ones from popping up
        // if you delete the < 1000, itll include a odd number  hats like 2 million pops up some times, if you could please help with that would be nice
        // i belive this is due to poor memory managment
        if (f[i].occur > 0 && f[i].occur < 1000)
        {
            occurances += f[i].occur;
        }
    }

    int max = 0;
    char mostoccuringTask[50];
    for (int i = 0; i < size; i++)
    {
        if (f[i].occur > 0 && f[i].occur < 1000)
        {
            if (f[i].occur > max)
            {
                max = f[i].occur;
                // shows an error but runs and compiles fine
                // moves the most occuring task to the variable mostoccuringTask
                strcpy(mostoccuringTask, f[i].task);
            }
        }
    }
    // MAIN Output for automated marking
    printf("%s\t%d\t0\n", mostoccuringTask, occurances);
    return f;
}

task *cronfile(char cron[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    // opens the crontab file into the file pointer
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
            // skips the line beginning with a hashtag #
            if (strchr(line, '#') != NULL)
            {
                continue;
            }
            // assigns id with i and reads in the line into the first of 3 structs to be used, all in string form at this point
            // if the use of a string type couldve been avoided at this point please provide example of how to fix
            c[j].id = i;
            sscanf(line, "%s %s %s %s %s %s", c[j].minute, c[j].hour, c[j].date, c[j].month, c[j].dayofWeek, c[j].task);
            i++;
            j++;
        }
    }
    // closes file and returns the struct
    fclose(fp);
    return c;
}

estim *estimeFile(char estimfile[])
{
    FILE *fp;
    char line[BUFFER_SIZE];
    // reads estimfile to the fp
    fp = fopen(estimfile, "r");
    // allocates enough memory
    estim *estim = malloc(sizeof(estim) * amountofLines(estimfile));
    int i = 1;
    int j = 0;
    // checking if malloc fails
    if (estim == NULL)
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
        // skips over the line if it begins with a hastag #
        if (strchr(line, '#') != NULL)
        {
            continue;
        }
        // assins estim an id if we were to expand the program it would be more handy
        estim[j].id = i;
        // reads in the line string holding the values to the respcted addresses
        sscanf(line, "%s %d", estim[j].task, &estim[j].minutes);
        i++;
        j++;
    }
    // closes the file pointer and returns the sturct for later use
    fclose(fp);
    return estim;
}

int main(int argc, char *argv[])
{
    // checks if the right amount of args are supplied
    if (argc != 4)
    {
        printf("Usage: ./estimatecron <month> <crontab-file> <estimates-file>\n");
    }
    else
    {
        // if the month isnt valid stop the program
        if (!(validMonth(argv[1])))
        {
            printf("Please input a valid month, 0->11 or jan->dec!!\n");
            exit(EXIT_FAILURE);
        }
        else
        {
            // big function call
            // allows for all the files to be checked with the month supplied
            // as well as amount of lines for dynamic struct sizing.
            convert(cronfile(argv[2]), estimeFile(argv[3]), amountofLines(argv[3]), argv[1]);
            // needs the free statement otherwise it wont work properly
            // if you can fix it or know how to not manage memory badly like i did
            // please give advice
            free(convert(cronfile(argv[2]), estimeFile(argv[3]), amountofLines(argv[3]), argv[1]));
        }
    }
}
