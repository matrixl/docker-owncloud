help:
	@echo "build - Build container"
	@echo "run - Run container"

build:
	docker build -t owncloud .

run: build
	docker run -d -m 1g -p 127.0.0.1:9000:9000 --name="owncloud" -v /var/owncloud:/var/www/owncloud/data owncloud
