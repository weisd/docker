FROM weisd/ubuntu
MAINTAINER im@weisd.in

WORKDIR /opt

RUN wget http://gobuild3.qiniudn.com/github.com/gogits/gogs/tag-v-v0.5.5/gogs-linux-amd64.tar.gz && tar zxf gogs-linux-amd64.tar.gz

ADD supervisord.conf /etc/supervisor/conf.d/nginx.conf

RUN mkdir /opt/custom

#ADD custom /opt

VOLUME /opt/custom

EXPOSE 3000

CMD ["/etc/init.d/supervisor", "start"]
