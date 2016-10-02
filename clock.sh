#!/usr/bin/env bash
#===============================================================================
#
#          FILE: clock.sh
# 
#         USAGE: ./clock.sh
# 
#   DESCRIPTION: A simple clock.
# 
#       OPTIONS: standard, seconds
#  REQUIREMENTS: Bash
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Henrik Ahlkvist(henrik.ahlkvis@gmail.com) 
#  ORGANIZATION: 
#       CREATED: 2016-10-01 16:21
#      REVISION:  ---
#===============================================================================
#check so arguments are passed
if [ $# -ne 1  ]; then
	    echo $0: usage:./clock.sh standard or seconds 
		    exit 1
		fi
hours="standard"
displayMode=$1

if [ $displayMode == "$hours" ]; then
	while true;do

		clear
		printf "%s\r" "The clock is : `date +%R` "
		sleep 30

	done

else
	while true;do

		clear
		printf "%s\r" "The current second is : `date +%S`"
		sleep 0.99
	done
fi
