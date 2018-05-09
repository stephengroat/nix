FROM ubuntu:16.04

ENV GLOBAL_CXXFLAGS=' -std=c++14' \
    CC=gcc-5 \
    CXX=g++-5 \
    PKG_CONFIG_PATH=/usr/lib/pkgconfig/:/usr/share/pkgconfig/:/usr/local/lib/pkgconfig/:/usr/local/share/pkgconfig/:/usr/lib/x86_64-linux-gnu/pkgconfig/
RUN apt-get update && \
    apt-get install -y g++-5 \
                       libseccomp-dev \
                       libxml2-utils \
                       libboost-all-dev \
                       autoconf \
                       autoconf-archive \
                       pkgconf \
                       gettext \
                       libxml2-utils \
                       patch
RUN mkdir /usr/src/nix
WORKDIR /usr/src/nix
ENTRYPOINT ["/bin/bash","-c"]
