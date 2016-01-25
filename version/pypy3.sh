#!/bin/bash -e

echo "================= Installing PYPY3 ==================="

#install Pypy
wget https://bitbucket.org/pypy/pypy/downloads/pypy3-2.4.0-linux64.tar.bz2
tar -xvf pypy3-2.4.0-linux64.tar.bz2 -C /opt/
cp -s /opt/pypy3-2.4.0-linux64/bin/pypy3 /usr/bin/pypy3
mkdir /opt/pypy3
mkdir /opt/pypy3/site-packages/
cd /opt/pypy

#Install virtualenv
virtualenv -p pypy3 $HOME/venv/pypy3

# Install pip packages
. $HOME/venv/pypy3/bin/activate
#not supported
#pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage

# optional lxml package as lxml is not compatible with pypy
#pip install -e git+git://github.com/aglyzov/lxml.git@cffi#egg=lxml-cffi

#Default lxml throws error
#CFLAGS="-O0" #STATIC_DEPS=true pip install lxml #throws error :disappointed:
deactivate
echo "================= Successfully Installed PYPY3 ==================="
