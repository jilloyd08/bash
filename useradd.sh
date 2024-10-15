### first creat the .txt file
   # useradd.txt
      # put user name and group they belong:
      # john:management
      # diana:programming
      # paul:accounting

#!/bin/bash
readarray accounts< <(cat ./users.txt)

for account in "${accounts[@]}"
do
    echo $account
    user=$(echo $account | cut -d: -f1)
    group=$(echo $account | cut -d: -f2)
    if [[  -z "$(grep -w $group /etc/group)" ]] ## this if statement eliminates errors when user/group already exists.
    then
        groupadd $group
        echo "Group $group added sucessfully!"
    else
        echo "Group $group already exists!"
    fi
    if [[  -z "$(grep -w $user /etc/passwd)" ]]
    then
        useradd -G $group $user
        echo "User $user added successfully!"
    else
        echo "User $user already exists!"
    fi
    echo "################"
    sleep 1
done

### give permissions chmod +x useradd.sh

### must run in root b/c only root can add directories

### run --> sudo ./useradd.sh



