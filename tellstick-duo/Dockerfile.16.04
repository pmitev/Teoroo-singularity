FROM ubuntu:16.04

RUN apt-get update && apt-get -y install wget gnupg2

RUN echo "deb http://download.telldus.com/debian/ stable main" > /etc/apt/sources.list.d/telldus.list

RUN wget -q http://download.telldus.com/debian/telldus-public.key -O- | apt-key add -

RUN apt-get update && apt-get -y install telldus-core 

CMD ["/usr/sbin/telldusd","--nodaemon"]
