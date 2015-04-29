FROM centos 

MAINTAINER "Glen Millard <gmillard@redhat.com>"

RUN yum -y update; yum clean all

RUN yum -y install haproxy 

RUN mv /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg.old

ADD haproxy.cfg /etc/haproxy/haproxy.cfg

EXPOSE 80

CMD haproxy -f /etc/haproxy/haproxy.cfg

#ENTRYPOINT echo 'we are running some # of cool things here at Redhat!'
