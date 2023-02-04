#!/bin/bash

# List the containers then prompt the user to enter 
# container ID for removal or enter exit
# If container ID then run docker rm containerID to remove container 
# loop the process 

sudo docker ps -a
sleep 0.5
echo 'Containers must be stopped to delete'
sleep 0.2
read -p "Enter contaner to be deleted, or exit to quit:" CONTAINER
TST=$(echo $CONTAINER | tr '[:upper:]' '[:lower:]') 
while [ ${TST} != "exit" ]
do
    echo "Container ID is ${CONTAINER}"
    sleep 1.5
    sudo docker rm ${CONTAINER}
    sleep 0.5
    if [ $? -eq 0 ]
    then
        sudo docker ps -a
    fi
    if [ $? -eq 0 ]
    then
        read -p "Enter contaner to be deleted, or exit to quit:" CONTAINER
        TST=$(echo $CONTAINER | tr '[:upper:]' '[:lower:]') 
        if [ ${TST} = "exit" ]
        then
            exit 1
        fi 
    else
        exit 1
    fi 
done


    



