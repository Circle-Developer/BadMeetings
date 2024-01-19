# Bad Meetings
A simple program for faking network issues in online meetings.


## Dependencies
> - v4l2loopback-utils (virtual camera)
> - python3 (camera code)
> - opencv-python
> - pyvirtualcam
>
> - PulseAudio (audio)


## Installation
It's very easy, just clone this repo and run the bash scripts
```
git clone https://github.com/Circle-Developer/BadMeetings
cd BadMeetings
```

### Attack both audio and video
```
bash micStart.bash &
bash camStart.bash
```

### only audio or video
`bash micStart.bash` 
or
`bash camStart.bash

