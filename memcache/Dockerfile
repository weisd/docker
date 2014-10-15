FROM weisd/ubuntu
MAINTAINER im@weisd.in

RUN apt-get -y install memcached

ADD supervisord.conf /etc/supervisor/conf.d/nginx.conf

EXPOSE 11211

CMD ["/etc/init.d/supervisor", "start"]
