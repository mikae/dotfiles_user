#!/usr/bin/env bash

function make_config {
    cat > $MPD_CONFIG_TARGET << EOF
#important
db_file                 "$MPD_DB"
log_file                "$MPD_LOG"

#optional
sticker_file            "$MPD_STICKER"
pid_file                "$MPD_PID"
state_file              "$MPD_STATE"

music_directory         "$MUSIC_DIR"
playlist_directory      "$MPD_PLAYLIST_DIR"

user                    "$MPD_USER"
port                    "$MPD_PORT"

log_level               "default"
follow_outside_symlinks "no"
follow_inside_symlinks  "yes"
filesystem_charset      "UTF-8"
auto_update             "no"

audio_output {
    type                "pulse"
    name                "pulse audio"
}

EOF
}

function make_necessary_files {
    touch $MUSIC_DIR
    touch $MPD_ROOT
    touch $MPD_PLAYLIST_DIR

    touch $MPD_DB
    touch $MPD_LOG
    touch $MPD_STICKER
    touch $MPD_PID
    touch $MPD_STATE
}

MUSIC_DIR=/home/data/Data/Music
MPD_ROOT=$MUSIC_DIR/.mpd
MPD_PLAYLIST_DIR=$MPD_ROOT/playlist

MPD_DB=$MPD_ROOT/db
MPD_LOG=$MPD_ROOT/log
MPD_STICKER=$MPD_ROOT/sticker
MPD_PID=$MPD_ROOT/pid
MPD_STATE=$MPD_ROOT/state

MPD_PORT=7701
MPD_USER=$USER

MPD_CONFIG_DIR=$HOME/.config/mpd
MPD_CONFIG_TARGET=$HOME/.config/mpd/mpd.conf

mkdir -p -v $MPD_CONFIG_DIR

echo_green "Removing old config"
rm $MPD_CONFIG_TARGET
touch $MPD_CONFIG_TARGET

echo_green "Generating config"
make_config

echo_green "Making necessary files and dirs"
make_necessary_files

echo_green "Changing permissions"
find $MUSIC_DIR -type d -exec chmod g-w,o-w {} +
find $MUSIC_DIR -type f -exec chmod a-x,g-w,o-w {} +
