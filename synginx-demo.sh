#!/bin/bash

#Steps:
#1. Make sure everything is installed
#	1.1 NGINX
#	1.2 PHP
#	1.3 Composer
#	1.4 MySQL
#	1.5 Symfony
#2. Configure NGINX Server
#	2.1 nginx.conf
#	2.2 sites-available/dev.nginx.com
#	2.3 Create symlink in sites-enabled/
#	2.4 Configure php-fpm
#	2.5 Update /etc/hosts file
#3. Enable and install all necessary PHP Extensions
#	3.1 php-xml
#	3.2 php-zip
#	3.3 php-mysql
#	3.4 php-fpm
#4. GRANT PRIVILEGES ON *.* TO 'user'@'localhost' IDENTIFIED BY password
#5. 

source synginx-install.sh
source synginx-install-php-ext.sh
source synginx-configure.sh
source synginx-mysql.sh
