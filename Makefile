build:
	docker build -t rhrhunter/vcv-build-env:ubuntu18.04-rack1.1.6 --build-arg RACK_SDK_VER=1.1.6 ubuntu-18.04/
