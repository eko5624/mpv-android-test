FROM fedora:latest as build

RUN dnf -y update && \
    dnf -y groupinstall "Development Tools" && \
    dnf -y install \
    	which python3-mako nasm \
        autoconf \
        pkgconfig \
        libtool \
        ninja-build \
        python3-pip \
		python3-setuptools \
		unzip \
		wget \
        java-11-openjdk-devel   \
        zlib.i686               \
        ncurses-libs.i686       \
        bzip2-libs.i686       && \
        pip3 install meson


RUN mkdir /build 
WORKDIR /build
