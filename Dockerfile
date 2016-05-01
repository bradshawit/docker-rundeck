FROM ubuntu:xenial

RUN apt-get update -q && \
    apt-get upgrade -qy && \
    apt-get install -qy openjdk-8-jdk && \
    apt-get install -qy wget && \
    apt-get install -qy openssh-client && \
    apt-get clean
    
RUN wget http://dl.bintray.com/rundeck/rundeck-deb/rundeck-2.6.7-1-GA.deb && \
    dpkg -i rundeck-2.6.7-1-GA.deb
    
EXPOSE 4440

