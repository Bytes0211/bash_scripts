#!/bin/bash

#get user input
read -p "Enter start or stop: " USERINPUT

# check user input
case "${USERINPUT}" in
	[sS][tT][aA][rR][tT]) # user character classes to check for upper and lower case 
		echo "You entered start."
		;;
	[sS][tT][oO][pP]) # user character classes to check for upper and lower case 
		echo "You entered stop."
		;;
	*)
		echo "Invalid answer." # capture invalid input
		;;
esac

logger -t section23_logging1.sh -s -p local0.info "script completed successfully."

