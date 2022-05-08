#!/bin/sh

sudo apt install curl -y
sudo apt install apt-transport-https -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io -y
sudo apt install docker-compose -y
sudo usermod -aG docker $(whoami)
sudo chgrp docker /var/run/docker.sock
sudo service docker restart
echo '##############################################################'
echo '# Choose "/usr/sbin/iptables-legacy   10        manual mode"'
echo '##############################################################'
sudo update-alternatives --config iptables
echo '#############################################################################'
echo '# Execute the below command for checking if install succeeded Docker or not.'
echo '# docker run hello-world'
echo '#############################################################################'
