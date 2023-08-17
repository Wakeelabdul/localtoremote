#!/bin/bash

uptime=$( cat /proc/uptime | awk '{print int($1)}' )

#this is done to calculate time in weeks as seconds format so 14 is no. of days and 24 hours and 60  min and 60 sec

time_in_weeks=$((14 * 24 * 60 * 60))

if [ "$uptime" -ge "$time_in_week" ]; then 
	echo "instance have been up for two weeks..restarting.."
	shutdown -r now

else
	echo "system have not been up for more than 2 weeks"

fi

# a varibale is written as variable=$() in bracket comes the content and to use it type $variable 
# if statement comes in square brackets
