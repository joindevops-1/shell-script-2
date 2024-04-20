#/bin/bash

COURSE="DevOps"
echo "Course before calling other script: $COURSE"
echo "PID from current script before calling other script: $$"

#./15-other-script.sh

source ./15-other-script.sh

echo "Course After calling other script: $COURSE"
echo "PID from current script After calling other script: $$"