#!/bin/bash

# Demonstrate I/O Redirect by sending the output of a command 
# to a file

# Create a variable FILE
PWD=$(pwd)

FILE="${PWD}/data"

#S send the first line of the /etc/passwd to FILE
head -n1 /etc/passwd > ${FILE}

# send first line of FILE to screen 
read LINE < ${FILE}
echo "LINE contains: ${LINE}"

sleep 2
echo "Now demonstratrate assigning a variable to a command then using that varabile in a command"
sleep 2
echo "Sending user ${USER} to a file named tmp"
echo "4tressByte$" > password
echo "Show the password in the file file password.."
sleep 2
cat password
echo "Assign password to bytes.."

# This does not work
#sudo passwd --stdin bytes < password

