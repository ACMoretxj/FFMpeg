FROM jrottenberg/ffmpeg:4.4.1-ubuntu2004

ARG DEBIAN_FRONTEND=noninteractive

ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV TERM=xterm-color

USER root
WORKDIR /root

COPY deploy/install install
RUN apt update && run-parts $PWD/install

COPY scripts scripts
