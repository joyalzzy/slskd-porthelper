FROM bash:4.4
COPY port.dat /port.dat
COPY port.sh /port.sh
COPY slskd.yml /slskd.yml
CMD ["bash", "port.sh"]
