#!/bin/bash

echo "setting up a Ruby/Golang/Java/Docker dev environment for Ubuntu."

cd $HOME
echo $PWD
sudo apt-get install -y build-essential vim git-core curl libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties mysql-client libmysqlclient-dev zlib1g-dev libpcre3 libpcre3-dev libgdbm-dev libncurses5-dev automake libtool bison libffi-dev python-dev zlib1g-dev software-properties-common ctags

## Install rvm to manage Ruby installs
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -L https://get.rvm.io | bash 
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc

git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cd ~/.vim_runtime
git clone git://github.com/tpope/vim-rails.git sources_non_forked/vim-rails

