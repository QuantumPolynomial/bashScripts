#!/usr/bin/env bash
#===============================================================================
#
#          FILE: test.sh
# 
#         USAGE: ./test.sh 
# 
#   DESCRIPTION: A simple clock.
# 
#       OPTIONS: Display seconds or only minute + hour on the same line
#  REQUIREMENTS: Bash
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Henrik Ahlkvist(henrik.ahlkvis@gmail.com) 
#  ORGANIZATION: 
#       CREATED: 2016-10-01 16:21
#      REVISION:  ---
#===============================================================================
set -o nounset                              # Treat unset variables as an error
echo "1) Hours + minutes"
echo "2) Seconds only"
read choice

if (("$choice"=="1"));then

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



