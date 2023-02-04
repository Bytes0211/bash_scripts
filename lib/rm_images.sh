#!/bin/bash

# List the images then prompt the user to enter 
# image ID or enter exit
# If image ID then run docker rmi imageID to remove image
# loop the process 

sudo docker images
sleep 0.5
read -p "Enter image to be deleted, or exit to quit:" IMAGE
TST=$(echo $IMAGE | tr '[:upper:]' '[:lower:]') 
while [ ${TST} != "exit" ]
do
    echo -e "\nImage ID is ${IMAGE} \n"
    docker rmi ${IMAGE}
    sleep 0.5
    if [ $? -eq 0 ]
    then
        sudo docker images 
    else
        exit 1
    fi
    if [ $? -eq 0 ]
    then
        read -p "Enter image to be deleted, or exit to quit:" IMAGE
        TST=$(echo $IMAGE | tr '[:upper:]' '[:lower:]') 
        if [ ${TST} = "exit" ]
        then
            exit 1
        fi 
    else
        exit 1
    fi 
done

