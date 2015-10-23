#!/bin/bash -e

# Install Python 2.6
sudo apt-get install -y python2.6 python2.6-dev

# Install virtualenv
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O /tmp/ez_setup.py
sudo python2.6 /tmp/ez_setup.py
sudo easy_install-2.6 pip
pip2.6 install virtualenv
virtualenv -p python2.6 $HOME/venv/2.6

# Install pip packages
. $HOME/venv/2.6/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
