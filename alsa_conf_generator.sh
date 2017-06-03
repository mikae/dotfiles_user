#!/usr/bin/env bash

install_config() {
cat > $CONFIG_FILE << EOF
pcm.!default {
    type hw
    card 1
}

ctl.!default {
    type hw
    card 1
}
EOF
}

CONFIG_FILE=~/.asoundrc

install_config
