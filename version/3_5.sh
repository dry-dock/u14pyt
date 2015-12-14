#!/bin/bash
sudo apt-get install python3.5

wget https://bootstrap.pypa.io/get-pip.py
python3.5 get-pip.py
pip install virtualenv

virtualenv -p python3.5 $HOME/venv/python3.5
# Install pip packages
. $HOME/venv/python3.5/bin/activate
pip install --upgrade wheel
pip install nose mock pytest coverage
deactivate
