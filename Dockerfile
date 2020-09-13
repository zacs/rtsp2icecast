FROM alpine:3.12
RUN apk add curl bash ffmpeg && \
    rm -rf /var/cache/apk/*
COPY stream.sh /usr/bin/stream.sh
RUN chmod +x /usr/bin/stream.sh
ENV RTSP_URL rtsp://freja.hiof.no:1935/rtplive/definst/hessdalen03.stream
ENV FFMPEG_INPUT_OPTS ""
ENV FFMPEG_OUTPUT_OPTS ""
ENV FFMPEG_LOG_LEVEL "warning"
ENV ICECAST_URL 127.0.0.1
ENV ICECAST_PASSWORD ""
ENV ICECAST_MOUNTPOINT "rtsp2icecast"
ENTRYPOINT stream.sh
