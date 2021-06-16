# rtsp2icecast

A simple Docker container to stream audio from an RTSP stream to Icecast using FFmpeg. 

Based on [rtsp2mjpg](https://github.com/eroji/rtsp2mjpg) by @eroji. 

### Environment Variables

Below are the environmental variables available and their default value. Override them as needed. The FFmpeg options are already set to auto-detect the audio stream in realtime and transcode it to MP3 at 128 kbps using LAME. 

| Variables            | Required |
|----------------------|:--------:|
| `RTSP_URL`           | Yes      |
| `ICECAST_URL`        | Yes      |
| `ICECAST_PASSWORD`   | Yes      |
| `ICECAST_MOUNTPOINT` | Yes      |
| `FFMPEG_INPUT_OPTS`  |          |
| `FFMPEG_OUTPUT_OPTS` |          |


#### Docker Compose

- Clone the repo
- Edit docker-compose.yaml
- Launch the containers using `docker-compose up -d`
