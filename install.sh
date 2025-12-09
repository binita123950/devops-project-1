#!/bin/bash

echo "Demo Script"
apt update
apt install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2
# Put some dummy echo message
echo "hello Devops" > /var/www/html/index.html

