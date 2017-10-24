FROM centos:centos6

MAINTAINER alessandro.minoccheri@studiomado.it

RUN yum -y update && yum install -y epel-release && yum install -y nginx

EXPOSE 80

ENTRYPOINT /etc/init.d/nginx start && bash
