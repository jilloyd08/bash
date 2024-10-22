# create script
    # nano variable_scope.sh

#!/bin/bash
var1="AA"
var2="BB"

function func1(){
    echo "Inside func1: var1 is $var1 and var2 is $var2"
}

func1

# save and give permissions
    # chmod +x variable_scope.sh
# run script
    # ./variable_scope.sh

# what would happen if we changed one of the global variables - var1 or var2 - inside the function?

#!/bin/bash
var1="AA"
var2="BB"

function func1(){
    echo "Inside func1: var1 is $var1 and var2 is $var2"
    var1="XX"
}

func1
echo "After calling func1: var1 is $var1 and var2 is $var2"

# save and run script again
    # this will show that var1 is now "XX"

# what happens if we make the var1 local?

#!/bin/bash
var1="AA"
var2="BB"

function func1(){
    echo "Inside func1: var1 is $var1 and var2 is $var2"
    local var1="XX"
    echo "var1 after making it local: $var1"
}

func1

# save and run script again
    # we will notice that the "local var1" has only changed inside the function to "XX" and the global var1 has now remained unchanged.