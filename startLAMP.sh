#! /bin/bash

echo 'Start MariaDB sever';
sudo systemctl start mariadb.service;
echo '';

echo 'Starting apache2'
sudo systemctl start apache2;
