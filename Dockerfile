FROM bash:4.4
# COPY pia-shared /pia-shared
COPY port.sh /port.sh
# COPY slskd.yml /slskd.yml
CMD ["bash", "port.sh"]
