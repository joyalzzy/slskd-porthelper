FROM alpine
# COPY pia-shared /pia-shared
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/main/" >> /etc/apk/repositories && \
    apk add --no-cache bash inotify-tools

COPY port.sh /port.sh
# COPY slskd.yml /slskd.yml
RUN chmod +x /port.sh

CMD ["/port.sh"]
