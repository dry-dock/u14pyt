#!/bin/bash -e

echo "================= Installing Python 2.6 ==================="
sudo apt-get install -y python2.6 python2.6-dev

# Install virtualenv
virtualenv -p python2.6 $HOME/venv/2.6

# Install pip packages
. $HOME/venv/2.6/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
echo "================= Successfully Installed Python 2.6 ==================="
