#!/bin/bash

read -p "Enter a user name: " USER

echo "Executing script: $0"
echo "Archiving user: ${USER}"

# Lock the account 
#passwd -1 $1

# I removed the tar creation and just made an echo string 
# to represent the archiving of the home directory

echo "/archives/${USER}.tar.gz /home/${USER}"

