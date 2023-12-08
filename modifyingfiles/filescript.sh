#!/bin/bash
echo "Enter filename: "
read file_name
count=1
last_file=$(ls -v $file_name*.txt 2>/dev/null | tail -n1)
if [ -z "$last_file" ]; then
	echo "Creating the first 25 files"
	while [ $count -le 25 ]; do
		touch "${file_name}$(($count)).txt"
		count=$(($count + 1))
	done
	ls -v $file_name*.txt
	exit 0
fi
last_num=$(echo "$last_file" | grep -oP '\d+')
while [ $count -le 25 ]; do
	touch "${file_name}$(($last_num + $count)).txt"
	count=$(($count + 1))
done
ls -v $file_name*.txt
