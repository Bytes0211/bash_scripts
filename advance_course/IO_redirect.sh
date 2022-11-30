#!/bin/bash

# Demonstrate I/O Redirect by sending the output of a command 
# to a file

# Create a variable FILE
FILE=/home/bytes/dev/bash_scripts/advance_course/data

#S send the first line of the /etc/passwd to FILE
head -n1 /etc/passwd > ${FILE}

# send first line of FILE to screen 
read LINE < ${FILE}
echo "LINE contains: ${LINE}"

sleep 2
echo "Now demonstratrate assigning a variable to a command then using that varabile in a command"
sleep 1
echo "Sending user ${USER} to a file named tmp"
echo "4tressByte$" > password
echo "Show the password in the file file password.."
sleep 0.5
cat password
echo "Assign password to bytes.."
sudo passwd --stdin bytes < password

