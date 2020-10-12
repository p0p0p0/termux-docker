#!/usr/bin/env bash

docker build -t 'xeffyr/termux:latest' -f Dockerfile.32bit .
docker build -t 'xeffyr/termux:x86_64' -f Dockerfile.64bit .

if [ "${1-}" = "publish" ]; then
	docker push 'xeffyr/termux:latest'
	docker push 'xeffyr/termux:x86_64'
fi
