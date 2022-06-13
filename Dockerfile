FROM nginx:mainline-alpine

VOLUME /var/www/html

RUN apk add --no-cache --update \
    apache2-utils \
    && rm -f /etc/nginx/conf.d/*

ENV PORT 80
ENV CLIENT_MAX_BODY_SIZE 1m
ENV WORKER_PROCESSES auto

COPY run.sh /
RUN chmod +x run.sh
COPY nginx.template /
