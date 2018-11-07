#!/bin/bash
declare -a arr=("sudo apt-get install php-xml"
		"sudo apt-get install php-zip"
		"sudo apt-get install php-mysql"
		"sudo apt-get install php-fpm"
		"sudo apt-get install php-intl"
		)

## now loop through the above array
for i in "${arr[@]}"
do
   eval "$i"
   # execute strings one by one
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also

