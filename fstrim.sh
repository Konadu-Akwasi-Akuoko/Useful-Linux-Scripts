#!/bin/bash

echo "Check if fstrim is working...";
sudo systemctl status fstrim;
echo "";
echo "---------------------------------------";
echo "fstrim -a";
sudo fstrim -a -v;
echo "";
echo "---------------------------------------";
echo "fstrim -A";
sudo fstrim -A -v;

