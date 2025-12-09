#!/bin/bash

echo "Demo Script"
apt update
apt install -y apache2

if [ -f /var/run/apache2/apache2.pid ]
; then
echo "Apache2 is running"
fi
status_code=$(dpkg -l | grep apache2)
if [ status_code -eq 0 ];
then
	echo "The package apache2 is already installed"
else
	echo "apache2 is not installed, installing it..."
	apt install -y apache2	
fi	

sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2
# Put some dummy echo message
echo "hello Devops" > /var/www/html/index.html

# Check the disk usage status
df -h

# current date
date
