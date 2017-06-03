#!/usr/bin/env bash

function make_config {
    cat > $CONFIG_PATH << EOF
[default]
ao=$DEFAULT_AUDIO_OUTPUT
vo=$DEFAULT_VIDEO_OUTPUT
EOF
}

CONFIG_DIR=$HOME/.mplayer
CONFIG_PATH=$CONFIG_DIR/config
DEFAULT_AUDIO_OUTPUT=pulse
DEFAULT_VIDEO_OUTPUT=x11

mkdir -p -v $CONFIG_DIR
make_config
