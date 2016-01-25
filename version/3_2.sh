#!/bin/bash -e

echo "================= Installing Python 3.2 ==================="
apt-get install -y python3.2 python3.2-dev

# Installing virtualenv
virtualenv -p python3.2 $HOME/venv/3.2

# Install pip packages
. $HOME/venv/3.2/bin/activate
pip install nose mock pytest coverage
deactivate
echo "================= Successfully Installed Python 3.2 ==================="
