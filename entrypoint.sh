#!/usr/bin/env bash

gst-launch-1.0 thetauvcsrc mode=4K ! h264parse ! nvv4l2decoder ! nvv4l2h264enc bitrate=10000000 iframeinterval=15 ! h264parse ! rtspclientsink location=rtsp://mediamtx:8554/theta
