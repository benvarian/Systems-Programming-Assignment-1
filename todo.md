1. get entries WORKING
work on returning structs.
2. MAKE SURE the file is valid, make sure that what is in the cron is in the estimates file 
3. assign pid to each item thats running 
4. create a number running at once variable GLOBAL

make a esitmate array and crontab array, easy to reference as they are in columns leading up to 6 

potentially use invoke(pid, nrunning) and has-terminated(pid,nrunning)

make sure when the month ends, arrays get cleared

deal with how many days are in a month 

not gonna be tested -> if number of running is greater than 20, terminate prorgram with error 


IDEAS 
make a function that goes through all the days in the month and terminates when its over 