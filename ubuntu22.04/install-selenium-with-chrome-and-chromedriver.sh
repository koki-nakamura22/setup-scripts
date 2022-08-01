#!/bin/sh

# Selenium
python -m pip install --upgrade pip
pip install selenium

# Chrome
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt update -y
sudo apt install -y google-chrome-stable

# Chromedriver
# Must specify Chromedriver version to match Chrome version.
wget https://chromedriver.storage.googleapis.com/103.0.5060.53/chromedriver_linux64.zip
sudo apt install -y unzip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
