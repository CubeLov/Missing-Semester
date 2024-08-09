#!/bin/bash

marco(){
	echo "$(pwd)" > /tmp/marco-path.txt
}

polo(){
	if [ -f /tmp/marco-path.txt ]; then
		path="$(cat /tmp/marco-path.txt)"
		cd "$path" || exit
	else
		echo "Please execute marco first"
	fi
}
