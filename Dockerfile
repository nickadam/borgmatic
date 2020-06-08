FROM alpine:3

RUN apk add \
    python3 \
    py3-pip \
    apk-cron \
    dumb-init \
    borgbackup && \
  pip3 install borgmatic && \
  mkdir /etc/borgmatic

COPY entrypoint.sh /

ENTRYPOINT ["dumb-init", "/entrypoint.sh"]
