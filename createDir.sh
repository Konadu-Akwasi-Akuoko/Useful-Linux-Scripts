#!/bin/bash

#ask user for the directory name
echo "What is the name of the directory?"
read directory_name

if [ -d ./"$directory_name" ]; then
	echo "Directory, $directory_name, already exits"
	exit 1
fi

#if there is no such file directory, create a directory and add the files
echo "Creating the directory"
mkdir "$directory_name"
echo "Done. Here is the directory"
ls "$directory_name"
cd ./"$directory_name"

#creating the files
echo "What name should I give the files"
read file_name
touch "$file_name".html "$file_name".js "$file_name".css

echo "Done. Here are the files you created"
ls -lv
