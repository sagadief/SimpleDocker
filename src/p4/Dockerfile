FROM nginx:latest

ARG PACKAGES="gcc libfcgi-dev spawn-fcgi"
ARG WORKDIR=/part3

RUN apt update && apt install -y $PACKAGES

WORKDIR $WORKDIR

COPY main.c main.c
COPY run.sh run.sh

EXPOSE 81

CMD bash run.sh
