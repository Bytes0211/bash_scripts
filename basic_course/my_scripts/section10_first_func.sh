#!/bin/bash

# basic hello world function 
function hello(){
	echo "Hello World from Steve!"
	now # call now function 
}

# now function returns date
function now() {
	echo "it's $(date +%r)"
}
hello

