FROM jrottenberg/ffmpeg:4.4.1-ubuntu2004

ARG DEBIAN_FRONTEND=noninteractive

ENV LANG=en_US.UTF-8
ENV TERM=xterm-color
ENV PATH=$PATH:/root/scripts

USER root
WORKDIR /root

COPY scripts scripts
COPY deploy/install install

RUN apt update && apt install curl -y
RUN run-parts install && rm -rf install
RUN npm install -g heic-cli

ENTRYPOINT ["ffmpeg"]
