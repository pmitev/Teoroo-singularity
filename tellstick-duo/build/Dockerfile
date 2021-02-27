FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ARG DEB_LDFLAGS_APPEND='-pthread'

RUN apt-get update && apt-get -y install wget build-essential fakeroot devscripts cmake libftdi-dev libconfuse-dev help2man

#RUN echo "deb-src http://download.telldus.com/debian/ stable main" > /etc/apt/sources.list.d/telldus.list
RUN echo "deb-src https://s3.eu-central-1.amazonaws.com/download.telldus.com unstable main" >> /etc/apt/sources.list.d/telldus-unstable.list

RUN wget -q http://download.telldus.com/debian/telldus-public.key -O- | apt-key add -

RUN apt-get update && apt-get -y build-dep telldus-core 

RUN mkdir -p /tellstick-build &&  cd /tellstick-build  && DEB_LDFLAGS_APPEND='-pthread' apt-get -y --compile source telldus-core && dpkg --install *.deb

CMD ["/usr/sbin/telldusd","--nodaemon"]
