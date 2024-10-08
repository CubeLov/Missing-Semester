#!/bin/bash

echo "Starting program at $(date))" # Date will be substituted

echo "Running program $0 with $# arguments with pid $$"

for file in "$@"; do 
	grep foobar "$file" > /dev/null 2> /dev/null

	if [[ "$?" -ne 0 ]]; then
		echo "File $file does not have any foobar"
		echo "# foobar" >> "$file"
	else
		echo "File $file have a foobar"
	fi
done
