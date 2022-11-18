#! /bin/bash

# get host from user input
read -p "Enter host: " HOST

# ping host one time
ping -c 1 $HOST

# assign the status code to a variable
RETURN_CODE=$?

echo "This is return code ${RETURN_CODE}"
if [ "${RETURN_CODE}" -ne "0" ]
then 
	echo "${HOST} unreachable."
fi



