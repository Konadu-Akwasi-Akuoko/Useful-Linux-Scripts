#! /bin/bash

echo 'Updating apt apps';
echo '-----------------';
sudo apt update;
echo '';

echo 'Upgrading apt apps';
echo '------------------';
sudo apt upgrade;
echo '';

echo 'Updating flathub apps';
echo '---------------------';
sudo flatpak update;
echo '';

echo 'Updating snap apps';
echo '------------------';
sudo snap refresh;
echo '';

