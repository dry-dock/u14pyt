#!/bin/bash
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tar.xz
tar -xvf Python-3.5.1.tar.xz
cd Python-3.5.1
./configure
sudo make
sudo make install

wget https://bootstrap.pypa.io/get-pip.py
python3.5 get-pip.py
pip install virtualenv

virtualenv -p python3.5 $HOME/venv/python3.5
# Install pip packages
. $HOME/venv/python3.5/bin/activate
pip install --upgrade wheel
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
CFLAGS="-O0" pip install lxml
deactivate
