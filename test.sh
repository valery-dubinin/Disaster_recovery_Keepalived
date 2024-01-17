#!/bin/bash
if [[ ! -f '/var/www/html/index.html' ]]; then # checking if file index.html is absent
	exit 1
fi;
nc -z 192.168.31.162 80 # checking ip and port via nc. its result is in $?
if [[ $? -ne 0 ]]; then
	exit 1
fi; 
