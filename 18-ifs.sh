#!/bin/bash

file=/etc/passwd

if [ ! -f $file ]
then
    echo "$file file does not exist."
    exit 1
fi

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

while IFS=":" read -r username password
do
    echo "$password"
done < $file