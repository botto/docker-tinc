# Simple docker container that runs tinc
The host will need the `tun` module loaded, the container will need to run with capability `NET_ADMIN` to work

## Getting started
The first step is to generate your node keys
`docker run -v (pwd)/data/<nodename>/:/tinc_conf --cap-add=NET_ADMIN tinc init <nodename>`

Once you have generated node keys you can configure your node and connect
`docker run --name="<nodename>" -v (pwd)/data/<nodename>/:/tinc_conf --cap-add=NET_ADMIN -d tinc start -D`

Details on how to configure a network is a google search away, at some point I might put up some details on how to set up a ipv6 network

