#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Process ID of the current shell: $$"
sleep 2000 &
echo "Process ID of the last background command: $!"
echo "Process ID of the current shell: $"
echo "Current working directory: $PWD"
echo "home directory of the user: $home"
echo "Current user: $user"
echo "hostname: $hostname"