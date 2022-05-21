# oci-wireguard
A multi-arch alpine based container image for wireguard

# How to use
Mount your wireguard configuration file to /etc/wireguard/wg0.conf inside the container, and your secret key at /etc/wireguard/privatekey.
The wireguard server listens on 51820 UDP inside the container. For information on how to generate those see official wireguard documentation: https://www.wireguard.com/quickstart/ .
