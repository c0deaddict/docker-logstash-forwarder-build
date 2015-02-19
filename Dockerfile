FROM debian:jessie

RUN apt-get update
RUN apt-get install -y golang git ruby ruby-dev build-essential rpm
RUN gem install fpm

ADD build.sh /build.sh
RUN chmod +x /build.sh
CMD /build.sh
