IMG="storage"

build:
	sudo chown $(USER) etc/ssh -R
	DOCKER_BUILDKIT=1 docker build . -t $(IMG)
	sudo chown root etc/ssh -R

save:
	docker save $(IMG) | gzip > $(IMG).tar.gz

start:
	 docker run --rm -it \
		 -p 10022:22 \
		 -v $(PWD)/home:/home \
		 -v $(PWD)/etc:/usr/etc \
		 $(IMG)
