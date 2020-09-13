FROM alpine:3.12
RUN apk add curl bash ffmpeg && \
    rm -rf /var/cache/apk/*
COPY stream.sh /usr/bin/stream.sh
RUN chmod +x /usr/bin/stream.sh
ENTRYPOINT stream.sh
