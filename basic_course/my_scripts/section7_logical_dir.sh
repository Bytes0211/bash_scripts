#! /bin/bash

#check to see if directory exist
if [ -d "/var/www/angular-site" ]
then
	# if it does exist remove files from it
	echo "/var/www/angular-site does exist"
	sudo rm /var/www/angular-site/*
	echo "files removed from /var/www/angular-site/"
else
	echo "/var/www/angular-site does not exist"
fi