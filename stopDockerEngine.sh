#!/bin/bash

echo "Stop the docker daemon service"
sudo systemctl stop  docker docker.socket containerd

echo "Check the status of the docker daemon service"
sudo systemctl status docker docker.socket containerd

echo "Disable docker from running on startup"
sudo systemctl disable docker docker.socket containerd
