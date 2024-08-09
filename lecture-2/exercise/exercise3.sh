#!/bin/bash

> "stdout.log"
> "stderr.log"

cnt=0
flag=true

while $flag
do
	bash "/home/thefool/MIT-Missing-Semester/lecture-2/exercise/script.sh" >> "stdout.log" 2>> "stderr.log"

	if [[ "$?" -ne 0 ]]; then
		flag=false
	fi
	cnt=$((cnt+1))
done

echo "The program tried $cnt times"
echo "The standard out is: "
cat stdout.log
echo "The standard error is: "
cat stderr.log
