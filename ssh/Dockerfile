FROM weisd/ubuntu
MAINTAINER im@weisd.in

RUN apt-get -y install openssh-server

ADD supervisord.conf /etc/supervisor/conf.d/nginx.conf

RUN sed -i 's/^PermitRootLogin/#PermitRootLogin/g' /etc/ssh/sshd_config

RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config

RUN echo 'root:123123' | chpasswd

RUN mkdir /data

#ADD custom /opt

VOLUME /data

EXPOSE 22

CMD ["/etc/init.d/supervisor", "start"]
