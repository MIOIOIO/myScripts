#!/bin/bash
# this shell script removes zero or more decimals followed by '_' from the beginning of filenames
# checks each file in the current folder and if the patter matches
# creates a new file name without the pattern using stream editor then renames the file
for fileName in `ls`; do
	if [[ $fileName =~ ^[0-9]*_ ]]; then
		newFileName=$(echo $fileName | sed -e 's/^[0-9]*_//g');
		mv -v "$fileName" "$newFileName";
	fi
done
read -p "Press key to exit.. " -n1

