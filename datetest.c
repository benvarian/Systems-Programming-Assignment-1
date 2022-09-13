#include <stdio.h>
#include <time.h>
#include <stdlib.h>

void print(int d, int h, int min, int sec)
{
    int ret;
    struct tm info;
    char buffer[80];

    // month
    info.tm_mon = 1;
    // day
    info.tm_mday = d;
    // hour
    info.tm_hour = h;
    // min
    info.tm_min = min;
    info.tm_sec = sec;

    ret = mktime(&info);
    if (ret == -1)
    {
        printf("Error: unable to make time using mktime\n");
        exit(EXIT_FAILURE);
    }
    else
    {
        strftime(buffer, sizeof(buffer), "%c", &info);
        printf("%s\n", buffer);
    }
}

int main(int argc, char *argv[])
{
    // int month = atoi(argv[1]);

    for (int d = 0; d <= 1; d++)
    {
        for (int ho = 0; ho <= 23; ho++)
        {
            wfor (int mi = 0; mi <= 59; mi++)
            {
                for (int sec = 0; sec <= 59; sec++)
                {
                    printf("%d:%d:%d:%d\n",d,ho,mi,sec);
                    // print(d, ho, mi, sec);
                }
            }
        }
    }
}
