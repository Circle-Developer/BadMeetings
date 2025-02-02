#!/bin/bash

sudo modprobe -r v4l2loopback
sudo modprobe v4l2loopback video_nr=9,10,11 card_label="v4l2loopback","looking","down"
python3 cam.py

