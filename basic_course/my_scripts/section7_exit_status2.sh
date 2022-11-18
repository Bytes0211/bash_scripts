#! /bin/bash

# host variable
HOST="google.com"

# now ping the host 1 time 
ping -c 1 $HOST

# if the status code equals 0 confirm
if [ "$?" -eq "0" ]
then 
	echo "${HOST} reachable."
else
	echo "${HOST} unreachable."
fi

