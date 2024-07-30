## make sure you are in /var/log/app

## you are tasked with creating a daily log for a 3 month period

## for this project create a directory January, February and March
    # now for each of those directories, create the correct number of directories that relect the amount of days in the month
    # then create a log file for each day

### if you were to do this with separate commands, it would take 183 commands! let's make this easier!

########################################

sudo mkdir -p /var/log/app{January/{01..31}, February/{01..28}, March/{01..31}}

# run tree .
    # you will see each directory has been created < 3 directories for each month, and a direcotry for each day >


## now this is the command to run in order to creat a daily log

sudo touch -p /var/log/app{January/{01..31}/log.daily, February/{01..28}/log.daily, March/{01..31}/log.daily}

# run tree .
    # you'll now see that each day has it's daily log