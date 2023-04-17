#!/bin/bash

# This script runs the apt update and upgrade commands.
echo '';
echo 'apt update';
sudo apt update

echo '';
echo 'apt upgrade';
sudo apt upgrade

echo '';
echo 'Snap update';
sudo snap refresh

echo '';
echo 'Flatpak update';
sudo flatpak update

echo'';
echo'Updating Andaconda if there is an update';
#conda update conda
#conda update anaconda
