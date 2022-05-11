#!/bin/sh

sudo sed -i'~' -E "s@http://(..\.)?(archive|security)\.ubuntu\.com/ubuntu@http://ftp.jaist.ac.jp/pub/Linux/ubuntu@g" /etc/apt/sources.list
sudo apt -y update
sudo apt -y full-upgrade

# Install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# Install rbenv-build
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install other tools
sudo apt install -y gcc build-essential libssl-dev libreadline-dev zlib1g-dev

# Setting rbenv path
echo '' >> ~/.bashrc
echo '# rbenv' >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL -l

sudo echo 'deb http://security.ubuntu.com/ubuntu bionic-security main' >> /etc/apt/sources.list

# Manual instructions
echo '###########################################################################################################################'
echo '# Do the following steps when you install Ruby 3.x.'
echo '# 1. Add "deb [trusted=yes] http://security.ubuntu.com/ubuntu bionic-security main" to the bottom of /etc/apt/sources.list'
echo '# 2. Execute "sudo apt update && apt-cache policy libssl1.0-dev"'
echo '# 3. Execute "sudo apt-get install -y libssl1.0-dev"'
echo '###########################################################################################################################'
