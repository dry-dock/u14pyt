#!/bin/bash -e

# Install Python 3.4
sudo apt-get install -y python3.4 python3.4-dev

# Install virtualenv
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O /tmp/ez_setup.py
sudo python3.4 /tmp/ez_setup.py
sudo easy_install-3.4 pip
pip3.4 install virtualenv
virtualenv -p python3.4 $HOME/venv/3.4

# Install pip packages
. $HOME/venv/3.4/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
