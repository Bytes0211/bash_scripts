#!/bin/bash

MY_SHELL="bash"

if [ "$MY_SHELL" = "bash" ]
then
	echo "You seem to like the bash shell."
elif [ "$MY_SHELL" = "csh" ]
then
	echo "You seem to like the csh shell."
else
	echo "You dont seem to like the bash or csh shells."
fi


