#!/bin/bash

trap "exit" INT TERM ERR
trap "kill 0" EXIT

ffmpeg -loglevel ${FFMPEG_LOG_LEVEL} -re ${FFMPEG_INPUT_OPTS} -i ${RTSP_URL} ${FFMPEG_OUTPUT_OPTS} -c:a libmp3lame -b:a 128k -content_type audio/mpeg -f mp3 icecast://source:${ICECAST_PASSWORD}@${ICECAST_URL}:8000/${ICECAST_MOUNTPOINT}
