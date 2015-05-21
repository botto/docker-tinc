#!/bin/bash

set -ex

mkdir -p /dev/net/
if [ ! -c /dev/net/tun ]; then
  mknod /dev/net/tun c 10 200
  chmod 666 /dev/net/tun
fi

tinc -c /tinc_conf $@
