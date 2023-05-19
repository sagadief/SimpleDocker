FROM debian:11.7

ARG WORKDIR=/part6
ARG PACKAGES="gcc libfcgi-dev spawn-fcgi"

RUN \
    apt update && \
    apt install -y $PACKAGES && \
    rm -rf /var/lib/apt/lists

WORKDIR $WORKDIR

COPY main.c main.c
COPY run.sh run.sh

CMD bash run.sh
