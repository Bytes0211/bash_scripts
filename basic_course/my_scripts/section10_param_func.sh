#!/bin/bash

# basic hello function
function hello() {
	echo "Hello $NAME"
}

# read in name 
read -p "Enter your name: " NAME

# stdout greeting 
hello $NAME 




