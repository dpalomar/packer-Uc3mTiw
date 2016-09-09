# !/bin/bash

docker run --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v `pwd`/.eclipse-docker:/home/developer -v `pwd`/workspace:/workspace dpalomar/sts
