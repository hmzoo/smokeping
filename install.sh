#!/bin/bash
# - Install SMOKEPING if not already installed
SMOKEPING_SOURCE_URL=${SMOKEPING_SOURCE_URL:-"https://oss.oetiker.ch/smokeping/pub/smokeping-2.7.3.tar.gz"}
wget -O /tmp/smokeping.tar.gz $SMOKEPING_SOURCE_URL --no-check-certificate
mkdir /tmp/smokeping
tar -C /tmp/smokeping -xzf /tmp/smokeping.tar.gz --strip-components 1
cd /tmp/smokeping
./configure --prefix=/opt/smokeping
make install

#./bin/smokeping --config=/opt/smokeping/etc/config --debug
