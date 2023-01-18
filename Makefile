image:
	docker build --tag app .

Gemfile.lock:
	docker run -it -v $(shell pwd | sed s@/home/@/hosthome/@):/work --workdir /work ruby:buster bundle install

