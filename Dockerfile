FROM ubuntu:16.04
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

RUN apt update -y \
    && apt install -y \
        build-essential \
        git \
        ruby \
        bison \
        libx11-dev \
	&& rm -rf /var/lib/apt/lists/*

ARG uid
RUN useradd user -u ${uid:-1000}
USER user
WORKDIR /xremap
