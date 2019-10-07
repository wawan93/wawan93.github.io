REPO=registry.wawan.pro/wawan/blog

.PHONY: all hugo docker

all: hugo docker

hugo:
	hugo

docker:
	docker build -t $(REPO) .
	docker push $(REPO)

