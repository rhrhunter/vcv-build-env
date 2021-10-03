all: build push

build:
	docker build -t rhrhunter/vcv-build-env:ubuntu18.04-rack1.1.6 --build-arg RACK_SDK_VER=1.1.6 ubuntu-18.04/
	docker build -t rhrhunter/vcv-build-env:ubuntu18.04-rack2 --build-arg RACK_SDK_VER=2.git.042a9ce0-lin ubuntu-18.04/

push:
	docker push rhrhunter/vcv-build-env:ubuntu18.04-rack1.1.6
	docker push rhrhunter/vcv-build-env:ubuntu18.04-rack2
