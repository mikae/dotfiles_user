#!/usr/bin/env bash

set_red_color() {
    tput setaf 1
}

set_green_color() {
    tput setaf 2
}

set_cyan_color() {
    tput setaf 6
}

reset_color() {
    tput sgr0
}

echo_green() {
    set_green_color
    echo $@
    reset_color
}

echo_red() {
    set_red_color
    echo $@
    reset_color
}

echo_cyan() {
    set_cyan_color
    echo $@
    reset_color
}

export -f set_red_color
export -f set_green_color
export -f set_cyan_color
export -f reset_color
export -f echo_green
export -f echo_red
export -f echo_cyan

echo_cyan "mpd"
bash ./mpd_conf_generator.sh

echo_cyan "mplayer"
bash ./mplayer_config_generator.sh

echo_cyan "smplayer"
bash ./smplayer_config_generator.sh

echo_cyan "transmission"
bash ./transmission_daemon_conf_generator.sh

echo_cyan "alsa"
bash ./alsa_conf_generator.sh

echo_cyan "git"
bash ./git_config_generator.sh

echo_cyan "redshift"
bash ./redshift_config_generator.sh

echo_cyan "other configs"
cp -Rv user_home/.config ~
cp -Rv user_home/.Xresources ~
cp -Rv user_home/.jsbeautifyrc ~
