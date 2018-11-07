#!/bin/bash
declare -a arr=("systemctl start mysql"
		"sudo mysql --execute=\"GRANT PRIVILEGES ON *.* TO 'user'@'localhost' IDENTIFIED BY 'password'\""
		)

## now loop through the above array
for i in "${arr[@]}"
do
   eval "$i"
   # execute strings one by one
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also

