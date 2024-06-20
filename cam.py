import cv2
import time
import pyvirtualcam
import random
import numpy as np

IMG_W = 640
IMG_H = 480

cam = cv2.VideoCapture(0)
fmt = pyvirtualcam.PixelFormat.BGR

oldF = None
doIt = True
with pyvirtualcam.Camera(width=IMG_W, height=IMG_H, fps=60, device='/dev/video9', fmt=fmt) as cap:
    while True:
        ret, frame = cam.read()
        if doIt:

            i=random.randint(50,90)
            w, h = (i, i)
            result = cv2.resize(frame, (w, h), interpolation=cv2.INTER_AREA)
            result = cv2.resize(result, (IMG_W, IMG_H), interpolation=cv2.INTER_AREA)
            i=23
            result = cv2.GaussianBlur(result, (i, i), 0)
            oldF=result
        else:
            result=oldF

        doIt0 = bool(random.randint(0, 1))
        doIt1 = bool(random.randint(0, 1))
        doIt2 = bool(random.randint(0, 1))
        doIt3 = bool(random.randint(0, 1))
        doIt = (doIt0 and doIt1 and doIt2 and doIt3)


        #cv2.imshow("",result)
        if cv2.waitKey(1)==ord('q'): 
            break

        cap.send(result)
        cap.sleep_until_next_frame()

cam.release()
cv2.destroyAllWindows()
