# syntax=docker/dockerfile:1
# Install necessary packages and exposes SSH

FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install imagemagick curl software-properties-common gnupg vim ssh
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN mkdir /opt/tomcat/<application-name>
RUN apt-get -y install java
RUN apt-get -y java-version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L -e url='http://my-nexus-server.com:8081/repository/maven-public/' "

