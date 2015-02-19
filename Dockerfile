FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y golang git ruby
RUN apt-get install -y ruby-dev
RUN apt-get install -y build-essential
RUN gem install fpm

ADD build.sh /build.sh
RUN chmod +x /build.sh
CMD /build.sh
