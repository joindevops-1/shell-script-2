#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Process ID of the current shell: $$"
sleep 2000 &
echo "Process ID of the last background command: $!"
echo "Current working directory: $PWD"
echo "home directory of the user: $HOME"
echo "Current user: $USER"
echo "hostname: $HOSTNAME"