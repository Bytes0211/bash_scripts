#!/bin/bash

# get host from user input
read -p "Enter host: " HOST

# ping host
ping -c 1 $HOST || echo "${HOST} not reachable"

