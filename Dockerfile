FROM centos:7
MAINTAINER HMJ <hmj@goatpage.com>

# add local files
COPY install.sh /tmp/install.sh

RUN chmod 700 /tmp/install.sh


RUN yum install -y epel-release
RUN yum install -y make gcc wget rrdtool perl-rrdtool openssl-devel perl-core perl-Net-SSLeay sendmail


RUN /tmp/install.sh
RUN cp /opt/smokeping/etc/config.dist /opt/smokeping/etc/config

CMD /opt/smokeping/bin/smokeping --config=/opt/smokeping/etc/config --debug
