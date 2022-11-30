#!/bin/bash

# demonstrate cat /dev/null

echo "Create a file named radio.txt"
sleep 1
echo "'enter This is a radio clash!' into the file"
sleep 2
echo "This is a radio clash!" > radio.txt
echo "Display the content of radio.txt"
sleep 2
cat radio.txt
sleep 1
echo "Remove the content of the file with cat /dev/null > radio.txt and display content"
cat /dev/null > radio.txt
sleep 2
echo "radio.txt content:"
cat radio.txt

# NOTE: you can surpress a stderro with /dev/null as well








