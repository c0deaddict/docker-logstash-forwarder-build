NAME=codeaddict/logstash-fwd-build
VERSION=0.1

.PHONY: all build

all: build

build:
	docker build -t $(NAME):$(VERSION) .

latest: build
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

#release: tag_latest
#	docker push $(NAME)
