# rtsp2icecast

A simple Docker container to stream audio from an RTSP stream to Icecast using FFmpeg.

### Environment Variables

Below are the environmental variables available and their default value. Override them as needed.

| Variables            | Default                                                      |
|----------------------|:------------------------------------------------------------:|
| `RTSP_URL`           | rtsp://freja.hiof.no:1935/rtplive/definst/hessdalen03.stream |
| `FFMPEG_LOG_LEVEL`   | warning                                                      |
| `FFMPEG_INPUT_OPTS`  | `empty`                                                      |
| `FFMPEG_OUTPUT_OPTS` | `empty`                                                      |
| `ICECAST_URL`        | 127.0.0.1                                                    |
| `ICECAST_PASSWORD`   | `empty`                                                      |
| `ICECAST_MOUNTPOINT` | rtsp2icecast                                                 |

#### Docker Compose

- Clone the repo
- Edit docker-compose.yaml for any customizations needed
- Launch the containers using `docker-compose up -d`
