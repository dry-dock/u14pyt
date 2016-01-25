#!/bin/bash -e

echo "================= Installing PYPY ==================="

#install Pypy
wget https://bitbucket.org/pypy/pypy/downloads/pypy-4.0.1-linux64.tar.bz2
tar -xvf pypy-4.0.1-linux64.tar.bz2 -C /opt/
cp -s /opt/pypy-4.0.1-linux64/bin/pypy /usr/bin/pypy
mkdir /opt/pypy
mkdir /opt/pypy/site-packages/
cd /opt/pypy

#Install virtualenv
virtualenv -p pypy $HOME/venv/pypy

# Install pip packages
. $HOME/venv/pypy/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage

# optional lxml package as lxml is not compatible with pypy
#pip install -e git+git://github.com/aglyzov/lxml.git@cffi#egg=lxml-cffi

#Default lxml throws error
#CFLAGS="-O0" #STATIC_DEPS=true pip install lxml #throws error :disappointed:
deactivate
echo "================= Successfully Installed PYPY ==================="
