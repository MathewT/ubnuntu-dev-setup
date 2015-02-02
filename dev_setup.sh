#!/bin/bash

echo "setting up a Ruby/Golang/Java/Docker dev environment for Ubuntu."

cd $HOME
echo $PWD
sudo apt-get install -y build-essential vim git-core curl libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties mysql-client libmysqlclient-dev zlib1g-dev libpcre3 libpcre3-dev libgdbm-dev libncurses5-dev automake libtool bison libffi-dev python-dev zlib1g-dev software-properties-common

## Install rvm to manage Ruby installs
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -L https://get.rvm.io | bash 
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc

wget http://amix.dk/vim/vimrc.txt
mv vimrc.txt .vimrc

#TODO Edit .vimrc and set the tabwidth to 2

