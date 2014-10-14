FROM ubuntu:14.04
MAINTAINER im@weisd.in

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak

add sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y wget inotify-tools supervisor git

#RUN apt-get -y install --only-upgrade bash
