#! /bin/bash

echo 'Start MariaDB sever'
sudo systemctl start mariadb.service
sudo systemctl status mariadb.service
echo ''

echo 'Starting apache2'
sudo systemctl start apache2
sudo systemctl status apache2
echo ''
