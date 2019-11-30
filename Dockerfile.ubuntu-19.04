FROM ubuntu:19.04
LABEL maintainer="rhrhunter"
ENV RACK_DIR=/tmp/Rack-SDK
WORKDIR /tmp

RUN apt update && \
    apt-get install -y git gdb curl cmake libx11-dev libglu1-mesa-dev \
                       libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev \
                       zlib1g-dev libasound2-dev libgtk2.0-dev libjack-jackd2-dev jq \
                       unzip wget

ARG RACK_SDK_VER
RUN wget https://vcvrack.com/downloads/Rack-SDK-${RACK_SDK_VER}.zip && unzip Rack-SDK-${RACK_SDK_VER}.zip
