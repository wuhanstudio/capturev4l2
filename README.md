## CaptureV4L2

This program captures an image from the Linux video device (/dev/video0), and converts it to the OpenCV Mat format, then displays and saves the image.

```
$ sudo apt install libopencv-dev
$ git clone https://github.com.wuhanstudio/capturev4l2 && cd capturev4l2
$ make
$ ./capturev4l2 -v /dev/video0
```

Check out all supported pixel formats before running this program:

```
$ v4l2-ctl --list-formats -d /dev/video0
ioctl: VIDIOC_ENUM_FMT
	Type: Video Capture

	[0]: 'MJPG' (Motion-JPEG, compressed)
	[1]: 'YUYV' (YUYV 4:2:2)
```

All available options:

```
$ ./capturev4l2  -h
Usage: ./capturev4l2 [options]
Available options are
 -f <format>    Select frame format
        0 = V4L2_PIX_FMT_YUYV
        1 = V4L2_PIX_FMT_MJPEG
        2 = V4L2_PIX_FMT_RGB24
 -r <resolution> Select frame resolution:
        0 = 360p, VGA (640x360)
        1 = 720p, (1280x720)
 -v device V4L2 Video Capture device
 -h Print this help screen and exit
```
