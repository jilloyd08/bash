## creating a sys admin script with menus that can be utilized across a company and is user friendly for even beginner employees

#!/bin/bash
PS3="Your choice:"
select ITEM in "Add User" "List All Processes" "Kill Process" "Install Program" "Quit"
do
        if [[ $REPLY -eq 1 ]]
        then
                read -p "Enter the username:" username
                output="$(grep -w $username /etc/passwd)"
                if [[ -n "$output" ]]
                then
                        echo "The username already exists!"
                else
                        sudo useradd -m -s /bin/bash "$username"
                        if [[ $? -eq 0 ]]
                        then
                                echo "The user $username has been added successfully."
                                tail -n 1 /etc/passwd
                        else
                                echo "There was an error adding the user."
                        fi
                fi
        elif [[ $REPLY -eq 2 ]]
        then
                echo "Listing all processes."
                sleep 1
                ps -ef
        elif [[ $REPLY -eq 3 ]]
        then
                read -p "Enter the process to kill:" process
                pkill $process
        elif [[ $REPLY -eq 4 ]]
        then
                read -p "Enter the progam to install:" app
                sudo apt update && sudo apt install $app -y
        elif [[ $REPLY -eq 5 ]]
        then
                echo "Quitting..."
                sleep 1
                exit
        else
                echo "Invalid menu selection."
        fi
done

#######################

## now save and return to terminal

## give execution permissions
    # chmod +x sys_admin.sh

## run command
    # ./sys_admin.sh

## if your code was inputted successfully, program will run
    ## if error occurs, check code for errors, fix, then run again