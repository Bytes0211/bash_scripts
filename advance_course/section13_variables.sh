#!/bin/bash

# Display the UID and username of the user executing this script
# Display if the user is the root user or not

# Display the UID of the script executor 
echo "The user id of the role executing the script ${UID}"

# Display the UID of the role logged into bash
USER_ID=$(id -u)
echo "The user id of the role signed into this bash session ${USER_ID}"

# Display the username
#NOTE: if you want to assign the output of a command to a variable
# use parentheis 
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}."

# Dispaly if the user is the root user or not.
 
