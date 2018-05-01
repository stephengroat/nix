FROM ubuntu:16.04

ENV GLOBAL_CXXFLAGS=' -std=c++14'
ENV CC=gcc-5
ENV CXX=g++-5
RUN apt-get update && apt-get install -y g++-5 libseccomp-dev libxml2-utils libboost-all-dev autoconf pkg-config
RUN mkdir /usr/src/nix
WORKDIR /usr/src/nix
