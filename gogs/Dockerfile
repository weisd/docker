FROM weisd/ubuntu
MAINTAINER im@weisd.in

RUN apt-get install -y openssh-server
RUN sed -i 's/^PermitRootLogin/#PermitRootLogin/g' /etc/ssh/sshd_config
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config

WORKDIR /opt

RUN wget http://gobuild3.qiniudn.com/github.com/gogits/gogs/tag-v-v0.5.5/gogs-linux-amd64.tar.gz && tar zxf gogs-linux-amd64.tar.gz

RUN mkdir /opt/custom

RUN useradd -m git

ENV GOGS_PATH /opt
ENV GOGS_CUSTOM_CONF_PATH $GOGS_PATH/custom/conf
ENV GOGS_CUSTOM_CONF $GOGS_CUSTOM_CONF_PATH/app.ini

RUN mkdir $GOGS_CUSTOM_CONF_PATH

#RUN chown -R git $GOGS_PATH

#USER git
#ENV HOME /home/git
ENV USER root
ENV PATH $GOGS_PATH:$PATH

RUN git config --global user.name "GoGS"
RUN git config --global user.email "im@weisd.in"

ADD init_gogs.sh /tmp/
RUN chmod a+x /tmp/init_gogs.sh

VOLUME /opt/custom

EXPOSE 3000 22

ENTRYPOINT ["/tmp/init_gogs.sh"]
CMD ["gogs", "web"]
