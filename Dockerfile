FROM ubuntu:16.04

ENV GLOBAL_CXXFLAGS=' -std=c++14' CC=gcc-5 CXX=g++-5 PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
RUN apt-get update && \
    apt-get install -y g++-5 \
                       libseccomp-dev \
                       libxml2-utils \
                       libboost-all-dev \
                       autoconf \
                       autoconf-archive \
                       pkg-config \
                       gettext \
                       libxml2-utils
RUN mkdir /usr/src/nix
WORKDIR /usr/src/nix
CMD ["/bin/bash"]
