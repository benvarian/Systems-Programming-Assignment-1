1. get entries WORKING
work on returning structs.
2. MAKE SURE the file is valid, make sure that what is in the cron is in the estimates file 
3. assign pid to each item thats running 
4. create a number running at once variable GLOBAL

potentially use invoke(pid, nrunning) and has-terminated(pid,nrunning)

make sure when the month ends, arrays get cleared


not gonna be tested -> if number of running is greater than 20, terminate prorgram with error 


IDEAS 
make a function that goes through all the days in the month and terminates when its over 


CREATE A INVOKE FUNCTION THAT STORES THE ARRAY OR STRUCTS AND GETS THE MONTH THEN BEING ABLE TO LOOP OVER AMOUNT OF DAYS 

test if the date supplied is true if date or day of week isnt *

for loop going through all the dates:
-   date -> hour -> minute 


checking if date converted to day in week == f[j],dayofweek