#!/bin/bash

ssserver -p 11223 -k $1 -m aes-256-cfb --user nobody -d start

/root/workspace/kcp-server -t "127.0.0.1:11223" -l $3 -mode fast2 -key $2
