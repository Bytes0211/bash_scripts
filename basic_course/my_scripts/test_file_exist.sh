#!/bin/bash

if [ -f "geekfil.txt" ]
then
	# if it does exist remove files from it
	echo "geekfile EXIST"
else
	echo "geekfile DOES NOT EXIST"
fi