#!/bin/bash -e

# install python prereqs
add-apt-repository -y ppa:fkrull/deadsnakes
apt-get update
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev

# Install Python 2.7
sudo apt-get install -y python python-dev python-pip python-virtualenv

# Install virtualenv
virtualenv -p python $HOME/venv/2.7

# Activate virtualenv on login
echo 'source $HOME/venv/2.7/bin/activate' >> $HOME/.bashrc

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage 
CFLAGS="-O0" pip install lxml
deactivate
