make ${MAKEFILE_DIR}   2>&1 | tee $LOG_FILE_DIR
make ${MAKEFILE_DIR} install 2>&1 | tee $LOG_FILE_DIR

# The "make" command is used to compile and build the software from its source code.
# The ${MAKEFILE_DIR} variable likely contains some additional command-line options for the "make" command.

# The 2>&1 part is called a "redirection" syntax that redirects the "standard error" output of the "make" command to the same destination as the "standard output".
# In other words, it captures any error messages or warnings from the "make" command and outputs them to the same console or file as the normal output.

# The | tee $LOG_FILE_DIR syntax pipes the output of the "make" command to the "tee" command, which duplicates the output to both the console and the specified log file.
# The $LOG_FILE_DIR variable likely contains the name or path of the log file.

# The second command, make ${MAKEFILE_DIR} install 2>&1 | tee $LOG_FILE_DIR, is similar to the first, except that it also includes the install parameter with the make command,
# which installs the built software onto the system after compilation.
