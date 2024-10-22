# create script
    # nano function.sh

#!/bin/bash
function log () {
    echo "I'm a simple log function!"
}

display(){
    echo "Hey, I'm displaying!"
}

log
display

# ^ log & display are added at the end with () in order to call each function accordingly.
    # this is how you get the function to run what is between your curly brackets {} and that can be any executable code.