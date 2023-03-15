#!/usr/bin/env bash

appname=TorrentSize
tag=$(git rev-parse --short HEAD)

name=${appname}-${tag}-windows.exe
GOOS="windows" GOARCH="amd64" go build -ldflags="-s -w" -o $name
gzip -f $name
echo $name

name=${appname}-${tag}-linux
GOOS="linux" GOARCH="amd64" go build -ldflags="-s -w" -o $name
gzip -f $name
echo $name

name=${appname}-${tag}-osx
GOOS="darwin" GOARCH="amd64" go build -ldflags="-s -w" -o $name
gzip -f $name
echo $name

name=${appname}-${tag}-freebsd
GOOS="freebsd" GOARCH="amd64" go build -ldflags="-s -w" -o $name
gzip -f $name
echo $name
