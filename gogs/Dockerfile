FROM weisd/ubuntu
MAINTAINER im@weisd.in

useradd -m git

WORKDIR /opt/gogs

RUN wget http://gobuild3.qiniudn.com/github.com/gogits/gogs/tag-v-v0.5.5/gogs-linux-amd64.tar.gz && tar zxf gogs-linux-amd64.tar.gz

RUN mkdir /opt/gogs/custom

RUN useradd -m git

ENV GOGS_PATH /opt/gogs
ENV GOGS_CUSTOM_CONF_PATH $GOGS_PATH/custom/conf
ENV GOGS_CUSTOM_CONF $GOGS_CUSTOM_CONF_PATH/app.ini

USER git
ENV HOME /home/git
ENV USER git
ENV PATH $GOGS_PATH:$PATH

RUN git config --global user.name "GoGS"

VOLUME /opt/gogs/custom

EXPOSE 3000

CMD ["gogs", "web"]
