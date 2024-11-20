#!/usr/bin/env bash

TMP_FILE_UNOPTIMIZED="/tmp/recording_unoptimized.gif"
TMP_PALETTE_FILE="/tmp/palette.png"
TMP_MP4_FILE="/tmp/recording.mp4"
TMP_GIF_RESULT="/tmp/gif_result"
APP_NAME="Recorder"

OUT_DIR="$HOME/Videos"
filename=$(date +"%Y-%m-%d_%H-%M-%S")
FILENAME="$OUT_DIR/$filename."

if [ ! -d "$OUT_DIR" ]; then
    mkdir -p "$OUT_DIR"
fi

is_recorder_running() {
    pgrep -x wf-recorder > /dev/null
}

convert_to_gif() {
    ffmpeg -i "$TMP_MP4_FILE" -filter_complex "[0:v] palettegen" "$TMP_PALETTE_FILE"
    ffmpeg -i "$TMP_MP4_FILE" -i "$TMP_PALETTE_FILE" -filter_complex "[0:v] fps=10,scale=1400:-1,setpts=0.5*PTS [new];[new][1:v] paletteuse" "$TMP_FILE_UNOPTIMIZED"
    if [ -f "$TMP_PALETTE_FILE" ]; then
        rm "$TMP_PALETTE_FILE"
    fi
    if [ -f "$TMP_MP4_FILE" ]; then
        rm "$TMP_MP4_FILE"
    fi
    gifsicle -O3 --lossy=100 -i "$TMP_FILE_UNOPTIMIZED" -o "$TMP_GIF_RESULT"
    if [ -f "$TMP_FILE_UNOPTIMIZED" ]; then
        rm "$TMP_FILE_UNOPTIMIZED"
    fi
}

notify() {
    notify-send -a "$APP_NAME" "$1" "$2" -t 5000
}

screen() {
    notify "Starting Recording" "Your screen is being recorded"
    timeout 600 wf-recorder -F format=rgb24 -x rgb24 -p qp=0 -p crf=0 -p preset=slow -c libx264rgb -f "$TMP_MP4_FILE"
}

area() {
    GEOMETRY=$(slurp)
    if [[ ! -z "$GEOMETRY" ]]; then
        notify "Starting Recording" "Your screen is being recorded"
        timeout 600 wf-recorder -F format=rgb24 -x rgb24 -p qp=0 -p crf=0 -p preset=slow -c libx264rgb -g "$GEOMETRY" -f "$TMP_MP4_FILE"
    fi
}

gif() {
    touch /tmp/recording_gif
    area
}

stop() {
    if is_recorder_running; then
        kill $(pgrep -x wf-recorder)

        if [[ -f /tmp/recording_gif ]]; then
            notify "Stopped Recording" "Starting GIF conversion phase..."
            FILENAME+="gif"
            convert_to_gif
            SavePath=$(zenity --file-selection --save --file-filter=*.gif --filename="$OUT_DIR"'/.gif')
            if [ "$SavePath" == "" ]; then
                SavePath="$FILENAME"
            fi
            [[ $SavePath =~ \.gif$ ]] || SavePath+='.gif'
            mv $TMP_GIF_RESULT $SavePath
            wl-copy -t image/png < $SavePath
            notify "GIF conversion completed" "GIF saved to $SavePath"
        else
            FILENAME+="mp4"
            SavePath=$(zenity --file-selection --save --file-filter=*.mp4 --filename="$OUT_DIR"'/.mp4')
            if [ "$SavePath" == "" ]; then
                SavePath="$FILENAME"
            fi
            [[ $SavePath =~ \.mp4$ ]] || SavePath+='.mp4'
            mv $TMP_MP4_FILE $SavePath
            wl-copy -t video/mp4 < $SavePath
            notify "Stopped Recording" "Video saved to $SavePath"
        fi

        [[ -f $TMP_FILE_UNOPTIMIZED ]] && rm -f "$TMP_FILE_UNOPTIMIZED"
        [[ -f $TMP_PALETTE_FILE ]] && rm -f "$TMP_PALETTE_FILE"
        [[ -f $TMP_GIF_RESULT ]] && rm -f "$TMP_GIF_RESULT"
        [[ -f $TMP_MP4_FILE ]] && rm -f "$TMP_MP4_FILE"
        [[ -f /tmp/recording_gif ]] && rm -f /tmp/recording_gif

        exit 0
    fi
}

if is_recorder_running; then
    stop
fi

if [ "$1" != "stop" ]; then
    [[ -f $TMP_FILE_UNOPTIMIZED ]] && rm -f "$TMP_FILE_UNOPTIMIZED"
    [[ -f $TMP_PALETTE_FILE ]] && rm -f "$TMP_PALETTE_FILE"
    [[ -f $TMP_GIF_RESULT ]] && rm -f "$TMP_GIF_RESULT"
    [[ -f $TMP_MP4_FILE ]] && rm -f "$TMP_MP4_FILE"
    [[ -f /tmp/recording_gif ]] && rm -f /tmp/recording_gif
fi

case "$1" in
    screen)
        screen
        ;;
    area)
        area
        ;;
    gif)
        gif
        ;;
    stop)
        stop
        ;;
    *)
        echo "Usage: $0 {screen|area|gif|stop}"
        exit 1
        ;;
esac
