#!/bin/sh

# SCRIPT=realpath $0 is used to get the full absolute path of the currently executing script and store it in the SCRIPT variable.
# If the current script is located at /home/user/myscript.sh,
# then after executing the SCRIPT=realpath $0 command,
# the SCRIPT variable will contain the value /home/user/myscript.sh.
SCRIPT=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT`
cd $SCRIPT_PATH

./build-env.sh  # Run script build-env.sh
if [ $? -ne 0 ]  # Check if previous exit status not equal to 0 (`$?` stores the exit status of the previous command)
then
   echo "ERROR: ./build-env.sh"
   exit 1  # Terminates the script with status 1
fi
