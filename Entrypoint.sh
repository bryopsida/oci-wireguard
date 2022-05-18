#!/bin/sh

stop () {
    wg-quick down wg0
    exit 0
}
trap stop SIGTERM SIGINT SIGQUIT

wg-quick up /etc/wireguard/wg0.conf
echo "Public key '$(sudo cat /etc/wireguard/privatekey | wg pubkey)'"
sleep infinity &
wait $!