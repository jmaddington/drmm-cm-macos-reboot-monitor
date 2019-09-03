#!/bin/bash

#Standard script variables
EXIT_SUCCESS=0
EXIT_FAILURE=1
exit_code=EXIT_SUCCESS
UDFOut=-1
UDFValue=''

FAILURE_THRESHOLD=$reboot_days

up=`uptime|awk {'print $3'}`

exit_code = EXIT_SUCCESS

if [[ $up -gt 1 ]]
then
    exit_code = EXIT_FAILURE
fi

if [ $exit_code -eq EXIT_SUCCESS ]
then
    echo "<-Start Result->"
    echo "Last reboot was $up days ago"
    echo "<-End Result->"
    exit 0
else # Script failed
    echo "<-Start Result->"
    echo "Last reboot was $up days ago"
    echo "<-End Result->"
    exit 1
fi