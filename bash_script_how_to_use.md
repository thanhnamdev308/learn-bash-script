# BASH SCRIPT GUIDE

A shell script is a computer program designed to be run by a shell , which is a command-line interpreter used in Unix-based operating systems.

It is essentially a text file that contains a sequence of commands written in a specific scripting language (such as Bash or Zsh) that are executed in a specific order.

Shell scripts allow for the automation of tasks and the creation of complex workflows by allowing users to define and run their own command-line utilities.

# What is #!/bin/sh
The `#!/bin/sh` at the beginning of a shell script is called a shebang or hashbang.

In this case, `/bin/sh` refers to the Bourne shell, which is one of the oldest and most basic shells available in most Unix-based operating systems.

This shebang syntax allows the script to be run as an executable file if the execute permission has been granted to the user.

For example, if a script named `myscript.sh` has the `#!/bin/sh` shebang at the top, and the user has the execute permission set for that file, they can execute it from the command line as follows:

```bash
./myscript.sh
```
### Is it same to #!/bin/bash ?
In most case, yes.

One reason to use `#!/bin/bash` instead of `#!/bin/sh` is if the script requires features that are not available in sh, such as arrays or certain types of command substitution.

However, if the script does not require any bash-specific features, it is generally safe to use `#!/bin/sh` for maximum portability.

It's worth noting that `/bin/sh` on some systems may not actually point to the Bourne shell, but to a different shell implementation that is sh-compatible.

# Some basic Commands of Linux
`cd`, `ls`, `pwd` is some very basic, if you don't know you are stupid.

`cp` - copy
```bash
cp -R <path-to-file/filename> <destination-dir>
```

`rm` - remove
```bash
rm -r <directory>
```

`find` - find files, directories
```bash
find <filename>
```

`echo` - display
```bash
echo $x  # to display value of x
```

`export` - export a environment variable
```bash
export WOKSPACE=$PWD
export QML_PATH=$HMI_PATH/Libs/qml:$QT_PATH/qml
# : is for including more than one path to the env variable
```

`env` - see all environment variables that are currently set
```bash
env | grep MY_VAR
```

`source` - to run a .sh file
```bash
source a.sh
# equal to
. a.sh
```

`du` - disk usage

```bash
du -h <filename>
# -h means human readable data, where storage in form KB, MB,...
# -s is subdirectory excluded
# -a is all
```

`df` - disk free, same syntax as __du__

`su` - switch user

`chmod` - change user permission
```bash
chmod o+xrw a.sh
# This command will add permission to `other` users (who are not the owner of the file) to execute, read and write the file `a.sh`.

chmod [user options][+ or -][permission options] [filename]
# With:
# [user options]: can be u - owner of the file, g - group, o - others (anyone in the world).
# [+ or -]: + to add permission, - to remove permission.
# [permission options]: can be r - read, w - write, x - execute.
```

`which` - get the location of the executable file of the package
```bash
which g++
```

`whereis` - get the location of the package and all related files
```bash
whereis g++
```

`stop` - disable some software
```bash
sudo /opt/McAfee/ens/tp/init/mfetpd-control.sh stop
sudo /opt/McAfee/ens/esp/init/mfeespd-control.sh stop
```
`ln` - create softlink
# Work with multiple user
```bash
sudo adduser <username>  # add new user

sudo usermod -aG sudo <username>  # change user mode to sudo

groups <username>  # check user adding result

sudo su <username>  # switch user

sudo chown -R <username> .ssh  # change owner of the folder `.ssh` to new user
```

# Work with remote filesystem
Mount to a remote filesystem
```bash
sudo mkdir /mnt/<foldername>  # create new folder to mount remote filesystem to

sudo sshfs –o allow_other username@ipaddress:/home/username/ /mnt/<foldername>  # use sshfs to mount

sudo umount /mnt/<foldername>  # unmount the folder
```
More usecase at: https://phoenixnap.com/kb/sshfs


Copy file from remote filesystem using scp
```bash
scp remote_username@10.10.0.2:/remote-path/file.txt /local-path/directory
```

On Windows:
```powershell
net use Z: \\58.187.5.176\share /persistent:No /user:WORKGROUP\thanhnam 1
# 1 is password
```


