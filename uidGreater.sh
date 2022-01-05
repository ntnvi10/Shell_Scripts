#!/bin/bash
userid=($(cat /etc/passwd | cut -d ':' -f3))
for i in userid; do
	if [ ${userid[i]} -gt 900 ]; then
		echo "${userid[i]}"
	fi
done
