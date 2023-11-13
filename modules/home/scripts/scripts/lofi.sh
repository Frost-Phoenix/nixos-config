#!/usr/bin/env bash

if (ps aux | grep Skype | grep -v grep > /dev/null)
    pkill mpv
else
    mpv --no-video https://www.youtube.com/live/jfKfPfyJRdk?si=OF0HKrYFFj33BzMo
fi