#!/bin/bash

# rempove all containers from local repository

docker rm $(docker ps -aq)
if [ $? -eq "0" ]
then
   echo "All containers removed."
else
   echo "An error occurred removing containers!"
fi


