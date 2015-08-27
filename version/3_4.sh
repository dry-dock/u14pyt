#!/bin/bash -e

# install python prereqs
add-apt-repository -y ppa:fkrull/deadsnakes
apt-get update
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev libffi-dev libssl-dev

# Install Python 3.4
sudo apt-get install -y python3.4 python3.4-dev 

# Install virtualenv
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O /tmp/ez_setup.py
sudo python3.4 /tmp/ez_setup.py
sudo easy_install-3.4 pip
pip3.4 install virtualenv
virtualenv -p python3.4 $HOME/venv/3.4

# Activate virtualenv on login
echo 'source $HOME/venv/3.4/bin/activate' >> $HOME/.bashrc

# Install pip packages
. $HOME/venv/3.4/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage 
CFLAGS="-O0" pip install lxml
deactivate
