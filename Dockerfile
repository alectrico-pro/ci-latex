FROM ubuntu:latest

# update the system
RUN apt-get -qq update
RUN apt-get -y -q install wget perl

# get texlive from http://tug.org/texlive/acquire-netinstall.html
RUN mkdir texlive && \
    cd texlive && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz -O- | tar zxf - && \
    cd *

ADD install.input /tmp/
RUN cd texlive/* && \
    ./install-tl --gui text < /tmp/install.input

