#!/usr/bin/env bash

# https://www.cnblogs.com/wjoyxt/p/6178458.html

curl -I -A "googlebot" localhost:3000/https://www.twant.com/mobile/
curl -I -A "baiduspider" localhost

curl -I -A "googlebot" localhost/mobile

