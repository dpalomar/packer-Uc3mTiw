# !/bin/bash
#MAINTAINER David Palomar

xhost +
docker run --rm -v /data/chromium:/data -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY jess/chromium
