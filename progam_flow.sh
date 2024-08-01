## PROGRAM FLOW CHALLENGES ##


# Create a script that takes an argument and tests if it's a file or not.

#!/bin/bash
if [[ -f "$1" ]]
then	
	echo "The argument is a regular file."
else
	echo "The argument is not a regular file."
fi


# Consider the solution to the previous challenge. Change it so that it also tests if the script is run with exactly one argument.

#!/bin/bash
if [[ $# -eq 1 ]]
then
	if [[ -f "$1" ]]
	then	
		echo "The argument is a regular file."
	else
		echo "The argument is not a regular file."
	fi
else
	echo "The script was run with $# arguments. You should run it with exactly one argument."
fi


# Create a script that clears the contents of a text file which is the script’s argument.  Test if the argument is of type regular file.

#!/bin/bash
if [[ -f "$1" ]]
then
	echo "" > "$1" 
	# equivalent to:
    	# cat /dev/null > "$1"
    	
	echo "The contents of $1 was cleared!"
else
	echo "The script's argument should be a regular file!"
fi


# Develop a script that appends to a file the users that are currently logged in and the current date and time.

#!/bin/bash

users="`who | cut -f1 -d" "`"
date_time="`date +%F\ %H:%M`"   #\ to escape the whitespace

echo $date_time >> logged_users.txt
echo "-------------------------" >> logged_users.txt
echo $users >> logged_users.txt
echo >> logged_users.txt

# Create a script that prompts for a username, checks if the username exists on the system and displays "User exists!" or "User DOES NOT exist!".

#!/bin/bash
read -p "Enter username: " username

result="$(grep -w $username /etc/passwd)"
if [[ -n $result ]]
then
	echo "Username $username exists!"
else
	echo "Username $username DOES NOT exist!"
fi

# Create a script that prompts the user for a file. Test that the file exists and is of type regular file. Prompt the user for 2 positive integers n and m.
# Display the lines (from line number n to m, both included) of the text file.

#!/bin/bash
read -p "Enter a file: " file

if [[ -f $file ]]
then
		read -p "Enter a positive integer n: " n
		read -p "Enter a positive integer m: " m
		q=$((m-n+1)) # no. of lines to display

		tail -n "+$n" $file | head -n $q
else
	echo "$file is not a file."
fi

