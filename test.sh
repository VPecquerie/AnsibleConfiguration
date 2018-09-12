#!/bin/sh
docker build . -t testansible
docker rmi testansible