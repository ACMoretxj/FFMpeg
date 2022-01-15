FROM jrottenberg/ffmpeg:4.4.1-ubuntu2004

ARG DEBIAN_FRONTEND="noninteractive"

ENV LANG="en_US.UTF-8"
ENV TERM="xterm-color"
ENV PATH="$PATH:/root/scripts/bin"

USER root
WORKDIR /root

COPY deploy/boot /boot
COPY deploy/build /build
COPY scripts scripts

RUN /build/build.sh

ENTRYPOINT ["/boot/entrypoint.sh"]
CMD ["ffmpeg"]
