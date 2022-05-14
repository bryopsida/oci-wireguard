FROM alpine:3.15

RUN apk add --no-cache wireguard-tools

RUN addgroup -g 1000 wireguard && \
  adduser -u 1000 -G wireguard -h /home/wireguard -D wireguard

USER wireguard

CMD ["/usr/bin/wg-quick", "up" "/etc/wireguard/wg0.conf"]