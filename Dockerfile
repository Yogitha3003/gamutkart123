FROM ubuntu:20.04 
MAINTAINER "info@wiculty.com"
RUN apt-get update
RUN apt-get install -y openjdk-17-jdk
ENV JAVA_HOME /usr
ADD apache-tomcat-11.0.2.tar.gz /root
COPY target/gamutkart.war /root/apache-tomcat-11.0.2/webapps
ENTRYPOINT /root/apache-tomcat-11.0.2/bin/startup.sh && bash

