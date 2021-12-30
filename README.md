## CaptureV4L2

This program captures an image from the Linux video device (/dev/video0), and converts it to the OpenCV Mat format, then displays and saves the image.

```
$ sudo apt install libopencv-dev
$ git clone https://github.com.wuhanstudio/capturev4l2 && cd capturev4l2
$ make
$ ./capturev4l2 /dev/video0
```

