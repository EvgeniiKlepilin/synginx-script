#!/bin/bash
declare -a arr=("sudo cp test.demo.website.com /etc/nginx/sites-available/test.demo.website.com" # Might need to fix it: Can only call from
#current directory: need to either specify full path for  test.demo.irokez or store it inside this file and create file from scratch
#instead of copying it
		"sudo ln -s ../sites-available/test.demo.website.com /etc/nginx/sites-enabled/test.demo.website.com" # Create symlink in sites-enabled/
		"sudo sed -i '36s/.*/; listen = \/run\/php\/php7.2-fpm.sock/' /etc/php/7.2/fpm/pool.d/www.conf" # Comment previous setting
		"sudo sed -i '37ilisten = 127.0.0.1:9000' /etc/php/7.2/fpm/pool.d/www.conf" # Add listen = 127.0.0.1:9000 line
		"sudo sed -i '1i127.0.0.99	test.demo.irokez.me' /etc/hosts" # Add another domain in hosts file
		)

## now loop through the above array
for i in "${arr[@]}"
do
   eval "$i"
   # execute strings one by one
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also

