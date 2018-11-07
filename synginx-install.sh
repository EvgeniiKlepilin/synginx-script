#!/bin/bash
declare -a arr=("sudo apt-get install nginx"
		"sudo apt-get install php"
		"sudo apt-get install mysql-server"
		"php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\""
		"php -r \"if (hash_file('sha384', 'composer-setup.php') ===
'93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; }
else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;\""
		"php composer-setup.php"
		"php -r \"unlink('composer-setup.php');\""
		"sudo mv composer.phar /usr/local/bin/composer"
		)

## now loop through the above array
for i in "${arr[@]}"
do
   eval "$i"
   # execute strings one by one
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also


