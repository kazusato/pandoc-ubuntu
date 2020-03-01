FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt upgrade
RUN apt install -y texlive-lang-cjk xdvik-ja evince
RUN apt install -y texlive-fonts-recommended texlive-fonts-extra
RUN apt install -y texlive-luatex texlive-xetex

RUN apt install -y wget
RUN wget https://github.com/jgm/pandoc/releases/download/2.9.2/pandoc-2.9.2-1-amd64.deb && \
  apt install -y ./pandoc-2.9.2-1-amd64.deb && \
  rm pandoc-2.9.2-1-amd64.deb
RUN mkdir /work
RUN useradd -s /usr/sbin/nologin -U -d /work -u 1000 pandoc

WORKDIR /work
USER pandoc
