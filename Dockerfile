FROM ubuntu
MAINTAINER HMJ <hmj@goatpage.com>

RUN apt-get update -qq && \
    apt-get install -qqy apache2 libapache2-mod-fastcgi perl rrdtool librrds-perl libssl-dev \
    curl dnsutils echoping ssmtp && \
    apt-get clean

https://oss.oetiker.ch/smokeping/pub/smokeping-2.7.3.tar.gz
