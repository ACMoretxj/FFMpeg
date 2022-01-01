# Build stage to prepare Node runtime
FROM ubuntu:20.04 AS build

COPY deploy/install install

RUN run-parts install
RUN npm install -g heic-cli

# Runtime stage to prepare necessary components
FROM jrottenberg/ffmpeg:4.4.1-ubuntu2004

ARG DEBIAN_FRONTEND=noninteractive

ENV LANG=en_US.UTF-8
ENV TERM=xterm-color
ENV PATH=$PATH:/opt/node/bin:/root/scripts/lib

USER root
WORKDIR /root

COPY --from=build /opt/node /opt/node
COPY scripts scripts
COPY deploy/boot /boot

RUN apt update && apt install vim-tiny -y

ENTRYPOINT ["/boot/entrypoint.sh"]
CMD ["ffmpeg"]
