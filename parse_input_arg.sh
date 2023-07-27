# Loop until all parameters are used up
while [ "$1" != "" ]; do
# option to run all test
if [ "$1" = "a" ]; then
RUN_ALL_TEST="True"
fi
# option to run normal test
if [ "$1" = "n" ]; then
RUN_NORMAL_TEST="True"
fi
# check for help request
if [ "$1" = "help" ]; then
usage
fi
# Shift all the parameters down by one
shift
done
