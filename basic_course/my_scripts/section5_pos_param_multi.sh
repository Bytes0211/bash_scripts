#!/bin/bash

echo "Executing script: $0"
for USER in "$@"
do
	echo "Archiving user: ${USER}"

	# Lock the account 
	#passwd -1 $1

	# Create an archive of the home directory
	# I removed the tar creation and just made an echo string 
	# to represent the archiving of the home directory
	echo "/archives/${USER}.tar.gz /home/${USER}"
done


