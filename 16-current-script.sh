#/bin/bash

COURSE=DevOps
echo "PID from current script: $$"
pwd
ls -l 15-other-script.sh
source ./15-other-script.sh

#./15-other-script.sh

echo "Course from current script: $COURSE"