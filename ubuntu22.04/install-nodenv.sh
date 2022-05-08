#!/bin/sh

# Install anyenv for installing nodenv
git clone https://github.com/anyenv/anyenv ~/.anyenv
echo '' >> ~/.bash_profile
echo '# anyenv' >> ~/.bash_profile
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
~/.anyenv/bin/anyenv init
anyenv install --init

# Install nodenv
anyenv install nodenv
exec $SHELL -l
