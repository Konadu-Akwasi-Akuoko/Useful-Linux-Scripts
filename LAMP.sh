#!/bin/bash

# This bash script is intended to start and stop the apache2 and mysql servers.
# The reason of this script is to remove any memory overhead when apache2 and mysql is not in use.

function start()
{
#starting apache2
echo '';
echo 'start apache2';
sudo systemctl start apache2
echo 'apache2 started, checking its status: ';
systemctl status apache2

#starting mysql
echo '';
echo 'start mysql';
sudo systemctl start mysql.service
echo 'mysql started, cheking its statsus: ';
systemctl status mysql.service
}

function stop()
{
#stoping apache2
echo '';
echo 'stop apache2';
sudo systemctl stop apache2
echo 'apache2 stopped, checking its status: ';
sudo systemctl status apache2

#stoping mysql
echo '';
echo 'stop mysql';
sudo systemctl stop mysql.service
echo 'mysql stoped, cheking its statsus: ';
sudo systemctl status mysql.service

}
