    docker build -t codeaddict/logstash-forwarder-build .
    docker run -it -v /tmp:/target codeaddict/logstash-forwarder-build
