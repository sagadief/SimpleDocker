FROM nginx:1.23.4

ARG PACKAGES="gcc libfcgi-dev spawn-fcgi"
ARG WORKDIR=/home/part5
ARG USERNAME=fatih

RUN apt update && apt install -y $PACKAGES && rm -rf /var/lib/apt/lists

WORKDIR $WORKDIR

RUN \
    useradd $USERNAME && \
    chown -R $USERNAME:$USERNAME /etc/nginx/nginx.conf && \
    chown -R $USERNAME:$USERNAME /var/cache/nginx && \
    chown -R $USERNAME:$USERNAME /home/part5 && \
    touch /var/run/nginx.pid && \
    chown -R $USERNAME:$USERNAME /var/run/nginx.pid && \
    chmod 777 /bin/mount && \
    chmod 777 /usr/bin/gpasswd && \
    chmod 777 /usr/bin/chage && \
    chmod 777 /usr/bin/expiry && \
    chmod 777 /usr/bin/wall && \
    chmod 777 /usr/bin/newgrp && \
    chmod 777 /usr/bin/passwd && \
    chmod 777 /usr/bin/chsh && \
    chmod 777 /usr/bin/chfn && \
    chmod 777 /bin/umount && \
    chmod 777 /bin/su && \
    chmod 777 /sbin/unix_chkpwd


COPY main.c main.c
COPY run.sh run.sh

RUN chown -R $USERNAME:$USERNAME main.c && chown -R $USERNAME:$USERNAME run.sh

EXPOSE 81

USER $USERNAME
HEALTHCHECK NONE

CMD bash run.sh
