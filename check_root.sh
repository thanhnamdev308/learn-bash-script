#!/bin/bash#

check_root() {
        if [[ $EUID -ne 0 ]]; then
                echo "You must run this script as root"
                exit 1
        fi
}
