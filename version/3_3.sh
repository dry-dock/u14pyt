#!/bin/bash -e

# Install Python 3.3
sudo apt-get install -y python3.3 python3.3-dev

# Install virtualenv
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O /tmp/ez_setup.py
sudo python3.3 /tmp/ez_setup.py
sudo easy_install-3.3 pip
pip3.3 install virtualenv
virtualenv -p python3.3 $HOME/venv/3.3

# Install pip packages
. $HOME/venv/3.3/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
