FROM ubuntu:18.04

ENV CXX=g++-5
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
                       patch \
                       bzip2 \
                       flex \
                       bison \
                       xz-utils \
                       gettext \
                       xsltproc \
                       libssl-dev \
                       brotli \
                       graphviz \
                       bro \
                       libbz2-dev \
                       libsqlite3-dev \
                       libcurl4-gnutls-dev \
                       liblzma-dev \
                       libsodium-dev \
                       libbrotli-dev \
                       make
RUN mkdir /usr/src/nix
WORKDIR /usr/src/nix
ENTRYPOINT ["/bin/bash","-c"]
