#!/bin/sh
CONFIG_PATH=/data/options.json
HTTP_PASS="$(jq --raw-output '.http_password' $CONFIG_PATH)"
TELNET_PASS="$(jq --raw-output '.telnet_password' $CONFIG_PATH)"
cvlc -I http --extraintf telnet --http-port 9892 --http-password test --telnet-password test --telnet-port 4212 --aout=pulse
