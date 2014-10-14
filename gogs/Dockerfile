FROM ubuntu:14.04
MAINTAINER im@weisd.in

RUN apt-get update
RUN apt-get install -y wget inotify-tools supervisor git

#RUN apt-get -y install --only-upgrade bash

WORKDIR /opt

RUN wget http://gobuild3.qiniudn.com/github.com/gogits/gogs/tag-v-v0.5.5/gogs-linux-amd64.tar.gz && tar zxf gogs-linux-amd64.tar.gz

ADD supervisord.conf /etc/supervisor/conf.d/nginx.conf

RUN mkdir /opt/custom

#ADD custom /opt

VOLUME /opt/custom

EXPOSE 3000

CMD ["/etc/init.d/supervisor", "start"]
