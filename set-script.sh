#!/bin/bash
set -e
handle_error() {
    echo "Error occurred on line $1: $2"
    exit 1
}

# Trap any errors and call the handle_error function with line number and error message
trap 'handle_error $LINENO "$BASH_COMMAND"' ERR

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysqsl -y
dnf install git -y
