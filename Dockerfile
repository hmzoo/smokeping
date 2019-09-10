FROM ubuntu
MAINTAINER HMJ <hmj@goatpage.com>

RUN apt-get update -qq && \
    apt-get install -qqy apache2 libapache2-mod-fastcgi perl rrdtool librrds-perl libssl-dev \
    curl dnsutils echoping ssmtp && \
    apt-get clean
RUN a2enmod actions fastcgi && service apache2 stop
