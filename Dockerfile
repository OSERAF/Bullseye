#  OSERAF Bullseye Server
#  Server
#

FROM centos:centos7
MAINTAINER Gregg Hanold "ghanold79@gmail.com"

# Install unzip so we later can unpack
RUN yum -y install unzip

RUN yum -y update; yum clean all

# Rexster requires Java 7 to run
# install system deps
RUN yum -y install wget
RUN yum -y install tar
RUN yum -y install install java-1.7.0-openjdk-devel

# Get Bullseye zip file
ADD  bullseye.zip /

RUN unzip bullseye.zip
RUN rm bullseye.zip
RUN mv bullseye-dist bullseye-server
RUN chmod 755 /bullseye-server/bullseye.sh
# configure system
# Server listening port
EXPOSE 8080

WORKDIR bullseye-server

## Entrypoint
ENTRYPOINT ["./bullseye.sh"]
