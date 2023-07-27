#!/bin/sh

TEST_PATH="/path/to/testdir"
EXPECTED_OUTPUT="This is the expected output"
FILE_LIST="one two three four five"
TEST_FAILED="false"

for file in $FILE_LIST; do
    echo "-----------------------------------------------------------------"
    echo "Testing: $file"
    if [ "$file" = "one" ]; then
        origin_data=$(cat $TEST_PATH/$file)
        echo "abc" > $TEST_PATH/$file && cat $TEST_PATH/$file | grep "abc" > /dev/null
        if [ $? -ne 0 ]; then
            echo "FAILED: output not as expected, expected is $EXPECTED_OUTPUT"
            TEST_FAILED="true"
        else
            echo "PASSED: output is as expected"
        fi
    elif [ "$file" = "two" ]; then
        cat $TEST_PATH/$file | grep "$EXPECTED_OUTPUT"
        if [ $? -ne 0 ]; then
            echo "FAILED: output not as expected, expected is $EXPECTED_OUTPUT"
            TEST_FAILED="true"
        else
            echo "PASSED: output is as expected"
        fi
    else
        echo "xyz" > $TEST_PATH/$file && cat $TEST_PATH/$file | grep "xyz" > /dev/null
        if [ $? -ne 0 ]; then
            echo "FAILED: output not as expected, expected is $EXPECTED_OUTPUT"
            TEST_FAILED="true"
        else
            echo "PASSED: output is as expected"
        fi
    fi
    echo "-----------------------------------------------------------------\n\n"
done
if [ "$TEST_FAILED" = "true" ]; then
    exit 1
else
    exit 0
fi
