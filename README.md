# FFMpeg

Personal customization of ffmpeg and related scripts.

## Components

* [heic-cli](https://www.npmjs.com/package/heic-cli): Convert HEIC pictures to JPEG format, need to run with Node runtime
* [ffmpeg](http://ffmpeg.org/): A complete, cross-platform solution to record, convert and stream audio and video

## Run Image

The image uses `ffmpeg` as command by default, the following command is how to use ffmpeg once:

```bash
$ docker run rucer/ffmpeg -i video-in.MP4 video-out.MP4
```

Since the image contains some convenient scripts, you can run this image in background and execute tasks when needed. The following command is a commonly-used way to run docker container in background, and you can find the ready-made script under *deploy* folder to run containers.

```bash
$ docker run -d rucer/ffmpeg tail -f /dev/null
```

## Leverage GPU

There is a ready-made ffmpeg [docker image](https://hub.docker.com/layers/jrottenberg/ffmpeg/4.4.1-nvidia2004/images/sha256-b4ce143964c858fd63dae920543736b5172efdefe14d63b71f3b0fdd62a58e22) that leverages Nvidia GPUs to accelerate processing. To run this docker image on Windows platforms, reference this [manual](https://docs.nvidia.com/cuda/wsl-user-guide/index.html) to leverage your GPUs.
