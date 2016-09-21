FROM rhel7.1:latest

MAINTAINER HAProxy

LABEL Name HA Proxy OSS 
LABEL Release OSS Edition
LABEL Vendor HA Proxy
LABEL Version 1.5.x

RUN yum -y update; yum clean all

#Install the RHEL version of HA Proxy
RUN yum -y install haproxy 

#Move the default config file out of the way
RUN mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.old

#Copy the custom config file into place
COPY haproxy.cfg /etc/haproxy/haproxy.cfg

#TCP Port 80 so we can see the server
EXPOSE 80

#Start up the HA Proxy server
CMD haproxy -f /etc/haproxy/haproxy.cfg
