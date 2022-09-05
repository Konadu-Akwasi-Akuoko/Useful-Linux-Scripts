#! /bin/bash

echo 'Stop MariaDB sever';
sudo systemctl stop mariadb.service;
sudo systemctl disable mariadb.service;
sudo systemctl status mariadb.service;
echo '';

echo 'Starting apache2'
sudo systemctl stop apache2;
sudo systemctl disable apache2;
sudo systemctl status apache2;
