#!/bin/sh
URL=$(echo $1 | sed 's/^mpv/https/')
mpv --force-window=immediate $URL
