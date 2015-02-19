#!/bin/bash -e
git clone git://github.com/elasticsearch/logstash-forwarder.git /tmp/logstash-forwarder
cd /tmp/logstash-forwarder
git checkout v0.3.1
go build
make deb
make rpm
mv *.rpm /target/
mv *.deb /target/
