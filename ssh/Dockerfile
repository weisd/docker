FROM weisd/ubuntu
MAINTAINER im@weisd.in

RUN apt-get -y install openssh-server

ADD supervisord.conf /etc/supervisor/conf.d/nginx.conf

RUN echo 'root:123123' | chpasswd

RUN mkdir /data

#ADD custom /opt

VOLUME /data

EXPOSE 22

CMD ["/etc/init.d/supervisor", "start"]
