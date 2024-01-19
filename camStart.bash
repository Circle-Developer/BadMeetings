#!/bin/bash

echo Sudo Password: 
read -s pass
echo $pass | sudo -S modprobe -r v4l2loopback
echo $pass | sudo -S modprobe v4l2loopback devices=1  exclusive_caps=1 video_nr=9 card_label="v4l2loopback"
python3 cam.py

