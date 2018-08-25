#!/bin/bash

nohup /go/bin/client -r $1 -l "127.0.0.1:11223" -mode fast2 -key $2 > /go/bin/kcp_client.log 2>&1 & 

/go/bin/shadowsocks-local -s "127.0.0.1" -p 11223 -k $3 -m aes-256-cfb -l 7070
