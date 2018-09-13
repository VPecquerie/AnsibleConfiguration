#!/bin/sh
docker build . -t testansible
docker run --rm -it testansible zsh
docker rmi testansible