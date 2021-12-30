## CaptureV4L2

This program captures an image from the Linux video device (/dev/video0), and converts it to the OpenCV Mat format, then displays and saves the image.

Make sure your camera supports `MJPEG` before running this program:

```
$ v4l2-ctl --list-formats -d /dev/video0
ioctl: VIDIOC_ENUM_FMT
	Type: Video Capture

	[0]: 'MJPG' (Motion-JPEG, compressed)
	[1]: 'YUYV' (YUYV 4:2:2)
```

If `MJPEG` is supported:

```
$ sudo apt install libopencv-dev
$ git clone https://github.com.wuhanstudio/capturev4l2 && cd capturev4l2
$ make
$ ./capturev4l2 /dev/video0
```

