FROM ubuntu:14.04
MAINTAINER im@weisd.in

RUN apt-get update
RUN apt-get install -y nginx php5 php5-cli php5-common php5-curl php5-gd php5-fpm php5-mcrypt php5-mysql php5-redis php5-mongo php5-imagick inotify-tools supervisor

RUN apt-get -y install --only-upgrade bash

RUN mkdir -p /data/config/nginx/conf.d /data/config/nginx/site.d /data/config/php /data/www

ADD supervisord.conf /etc/supervisor/conf.d/nginx.conf

ADD data /data

ADD etc /etc

RUN sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 127.0.0.1:9000/g;s/^;listen\.allowed_clients/listen\.allowed_clients/g' /etc/php5/fpm/pool.d/www.conf

RUN sed -i 's/^;date\.timezone =/date\.timezone = PRC/g;s/^;cgi.fix_pathinfo=1/cgi\.fix_pathinfo=0/g' /etc/php5/fpm/php.ini

#todo 总结一个统一的php.ini

#todo log 处理

VOLUME /data

EXPOSE 80

CMD ["/etc/init.d/supervisor", "start"]