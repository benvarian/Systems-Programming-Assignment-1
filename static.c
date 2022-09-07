#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void num(int x, bool t)
{
    int arr[10];
    if (t != false)
    {
        arr[x] = x;
        printf("%d\n", arr[x]);
    }
}

int main(int argc, char *argv[])
{
    for (int i = 0; i < 10; i++)
    {
        num(i, true);
        if (i == 9)
        {
            num(i, false);
        }
    }
}