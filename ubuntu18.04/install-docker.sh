#!/bin/sh

# install docker (ver 18.06.1)
sudo apt-get update
sudo apt-get upgrade -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu
sudo usermod -aG docker $USER

# start docker service
sudo cgroupfs-mount
sudo service docker start

# setting docker auto start
echo 'sudo cgroupfs-mount' >> ~/.bashrc
echo 'sudo service docker start' >> ~/.bashrc
