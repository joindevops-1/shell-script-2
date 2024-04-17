#!/bin/bash

USERID=$(id -u)
DATE=$(date +%F-%M-%S)
LOGFILE=$(echo 11-functions.sh | cut -d "." -f1)
LOG=/tmp/$LOGFILE-$DATE.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y & >> $LOG
VALIDATE $? "MySQL installation"

dnf install git -y & >> $LOG
VALIDATE $? "Git installation"
