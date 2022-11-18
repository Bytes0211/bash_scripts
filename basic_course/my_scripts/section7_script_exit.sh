#!/bin/bash

# get host from user input
read -p "Enter host: "  HOST

# ping host
ping -c 1 $HOST
if [ "$?" -ne "0" ]
then
	echo "${HOST} unreachable."
	exit 1
fi
exit 0

