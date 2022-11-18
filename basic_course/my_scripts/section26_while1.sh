#!/bin/bash

echo "Creating angular files...."
# set count variable
INDEX=1
while [ ${INDEX} -lt 6 ]
do
	sudo touch /var/www/angular-site/angular${INDEX}.txt
	((INDEX++))
done
echo "${INDEX} files created." 

