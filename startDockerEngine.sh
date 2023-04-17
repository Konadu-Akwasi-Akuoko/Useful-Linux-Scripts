#!/bin/bash

echo "Start the docker daemon service"
sudo systemctl start docker docker.socket containerd

echo "Check the status of the docker daemon service"
sudo systemctl status docker docker.socket containerd
