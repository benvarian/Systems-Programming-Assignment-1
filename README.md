# Systems Programming Assignemnt 1 

## Introduction
Most Unix-based systems, such as Linux and macOS, employ a command named cron which supports the scheduling and execution of non-interactive, often long-running, commands. The cron process 'wakes-up' every minute, reads from a text file termed a crontab-file, and commences the execution of any commands that should run at that time. cron is often used to schedule backups at times when a machine will otherwise be idle, and to support a list of task requests, a batch queue, on supercomputer and cloud-computing platforms.
(Do not go into too much depth, but you can read about the standard cron command from section 8 of your system's online manual, and read about the standard crontab format from section 5 of your system's online manual.)

For this project we will use the information in two text files, termed the crontab-file and the estimates-file, to anticipate the required computing load on a system, based on the execution time of previously executed commands.

A typical invocation of your project will be:

prompt>  ./estimatecron  month  crontab-file  estimates-file

which specifies the month (of the current year) to be analysed (either an integer 0..11, or a 3-character name), and the name of the two required text files (you may choose any names for the files).

Your estimatecron program should check the validity of the information in its input files (reporting any errors), simulate (better word?) the execution of commands invoked during the requested month, and report the values of:  the name of the most frequently executed command (a single word), the total number of commands invoked (a non-negative integer), and the maximum number of commands running at any time (a non-negative integer).
