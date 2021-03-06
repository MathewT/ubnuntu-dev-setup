#!/bin/bash

echo "setting up a Ruby/Golang/Java/Docker dev environment for Ubuntu."
echo "Please make sure you have already setup any ssh keys needed!"

cd $HOME
echo $PWD
sudo apt-get install -y build-essential vim git-core curl libssl-dev \
    libreadline-dev libyaml-dev libxml2-dev libxslt1-dev \
    libcurl4-openssl-dev python-software-properties \
    libmysqlclient-dev zlib1g-dev libpcre3 libpcre3-dev \
    libgdbm-dev libncurses5-dev automake libtool bison \
    libffi-dev python-dev zlib1g-dev software-properties-common \
    ctags gawk

## Install rvm to manage Ruby installs
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -L https://get.rvm.io | bash 
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc

git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cd ~/.vim_runtime
git clone git://github.com/tpope/vim-rails.git sources_non_forked/vim-rails

#Installing Ruby 2.2.0
rvm install 2.2.0

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install -y --force-yes lxc-docker

sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart



