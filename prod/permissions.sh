#!/bin/bash

read -p "Enter file name: " FILE

if [ -f "${FILE}" ]
then
	# change permissions to allow shell execution
    sudo chmod 755 ${FILE}
    sudo chmod a+u ${FILE}
	echo "${FILE} is now executable.."
else
	echo "Cannot change permssions for ${FILE}. File Does not exist!"
fi
