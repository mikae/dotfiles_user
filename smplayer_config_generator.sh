#!/usr/bin/env bash

make_smplayer_config() {
    cat > $CONFIG_PATH << EOF
[default_gui]
video_info=false
frame_counter=false
fullscreen_toolbar1_was_visible=true
fullscreen_toolbar2_was_visible=true
compact_toolbar1_was_visible=false
compact_toolbar2_was_visible=false
pos=@Point(3842 21)
size=@Size(956 1038)
state=0
toolbars_state="@ByteArray(\0\0\0\xff\0\0\x12\xc6\xfd\0\0\0\x1\0\0\0\x3\0\0\0\0\0\0\0\0\xfc\x1\0\0\0\x1\xfb\0\0\0\x18\0p\0l\0\x61\0y\0l\0i\0s\0t\0\x64\0o\0\x63\0k\x2\0\0\0\0\0\0\0\0\0\0\0\x64\0\0\0\x1e\0\0\x3\xbc\0\0\x3\xa4\0\0\0\x4\0\0\0\x4\0\0\0\b\0\0\0\b\xfc\0\0\0\x2\0\0\0\x2\0\0\0\x2\0\0\0\x10\0t\0o\0o\0l\0\x62\0\x61\0r\0\x31\x1\0\0\0\0\xff\xff\xff\xff\0\0\0\0\0\0\0\0\0\0\0\x10\0t\0o\0o\0l\0\x62\0\x61\0r\0\x32\x1\0\0\x1=\xff\xff\xff\xff\0\0\0\0\0\0\0\0\0\0\0\x3\0\0\0\x2\0\0\0\x1a\0\x63\0o\0n\0t\0r\0o\0l\0w\0i\0\x64\0g\0\x65\0t\x1\0\0\0\0\xff\xff\xff\xff\0\0\0\0\0\0\0\0\0\0\0$\0\x63\0o\0n\0t\0r\0o\0l\0w\0i\0\x64\0g\0\x65\0t\0_\0m\0i\0n\0i\0\0\0\0\0\xff\xff\xff\xff\0\0\0\0\0\0\0\0)"
actions\toolbar1=open_file, open_url, favorites_menu, separator, screenshot, separator, show_file_properties, show_playlist, separator, show_preferences, separator, play_prev, play_next
actions\controlwidget=play_or_pause, stop, separator, rewindbutton_action, timeslider_action, forwardbutton_action, separator, fullscreen, mute, volumeslider_action
actions\controlwidget_mini=play_or_pause, stop, separator, rewind1, timeslider_action, forward1, separator, mute, volumeslider_action
actions\floating_control=play, pause, stop, separator, rewindbutton_action, timeslider_action, forwardbutton_action, separator, fullscreen, mute, volumeslider_action, separator, timelabel_action
actions\toolbar1_version=1
toolbars_icon_size\toolbar1=@Size(24 24)
toolbars_icon_size\controlwidget=@Size(24 24)
toolbars_icon_size\controlwidget_mini=@Size(24 24)
toolbars_icon_size\floating_control=@Size(24 24)

[base_gui_plus]
show_tray_icon=false
mainwindow_visible=true
trayicon_playlist_was_visible=false
widgets_size=0
fullscreen_playlist_was_visible=false
fullscreen_playlist_was_floating=true
compact_playlist_was_visible=false
ignore_playlist_events=false

[playlist]
repeat=false
shuffle=false
auto_get_info=false
recursive_add_directory=false
save_playlist_in_config=true
play_files_from_start=true
automatically_play_next=true
ignore_player_errors=false
row_spacing=-1
latest_dir=

[playlist_contents]
count=1
item_0_filename=/home/data/Downloads/Complete/Shrek.2.2004.BDRip_s.x264.RG.Tru.mkv
item_0_duration=5543.51
item_0_name=Shrek.2.2004.BDRip_s.x264.RG.Tru.mkv
current_item=0
modified=false

[%General]
config_version=4
mplayer_bin=/usr/bin/mplayer
driver\vo=$DEFAULT_VIDEO_OUTPUT
driver\audio_output=$DEFAULT_AUDIO_OUTPUT
use_screenshot=true
screenshot_template=cap_%F_%p_%02n
screenshot_format=jpg
screenshot_folder=/tmp/smplayer_screenshots
capture_directory=
dont_remember_media_settings=false
dont_remember_time_pos=false
audio_lang=
subtitle_lang=
use_direct_rendering=false
use_double_buffer=true
use_soft_video_eq=false
use_slices=false
autoq=6
add_blackborders_on_fullscreen=false
disable_screensaver=true
vdpau_ffh264vdpau=true
vdpau_ffmpeg12vdpau=true
vdpau_ffwmv3vdpau=true
vdpau_ffvc1vdpau=true
vdpau_ffodivxvdpau=false
vdpau_disable_video_filters=true
use_soft_vol=true
softvol_max=110
use_scaletempo=-1
use_hwac3=false
use_audio_equalizer=true
global_volume=true
volume=50
mute=false
global_audio_equalizer=true
audio_equalizer=0, 0, 0, 0, 0, 0, 0, 0, 0, 0
autosync=false
autosync_factor=100
use_mc=false
mc_value=0
autoload_m4a=true
min_step=4
osd=0
osd_scale=1
subfont_osd_scale=3
osd_delay=2200
file_settings_method=hash

[drives]
dvd_device=
cdrom_device=/dev/cdrom
bluray_device=
vcd_initial_title=2
use_dvdnav=false

[performance]
priority=2
frame_drop=false
hard_frame_drop=false
coreavc=false
h264_skip_loop_filter=1
HD_height=720
fast_audio_change=-1
threads=1
hwdec=no
cache_for_files=2048
cache_for_streams=2048
cache_for_dvds=0
cache_for_vcds=1024
cache_for_audiocds=1024
cache_for_tv=3000

[streaming]
enable_streaming_sites=false

[subtitles]
subcp=ISO-8859-1
use_enca=false
enca_lang=en
subfuzziness=1
autoload_sub=true
use_ass_subtitles=true
enable_ass_styles=true
ass_line_spacing=0
use_forced_subs_only=false
sub_visibility=true
subtitles_on_screenshots=false
change_sub_scale_should_restart=-1
fast_load_sub=true
styles\fontname=Arial
styles\fontsize=20
styles\primarycolor=16777215
styles\backcolor=0
styles\outlinecolor=0
styles\bold=false
styles\italic=false
styles\halignment=2
styles\valignment=0
styles\borderstyle=1
styles\outline=1
styles\shadow=2
styles\marginl=20
styles\marginr=20
styles\marginv=8
force_ass_styles=false
user_forced_ass_style=
freetype_support=true

[advanced]
color_key=20202
use_mplayer_window=false
monitor_aspect=
use_idx=false
use_lavf_demuxer=false
mplayer_additional_options=
mplayer_additional_video_filters=
mplayer_additional_audio_filters=
log_mplayer=true
verbose_log=false
autosave_mplayer_log=false
mplayer_log_saveto=
log_smplayer=true
log_filter=.*
save_smplayer_log=false
repaint_video_background=false
use_edl_files=true
use_playlist_option=false
prefer_ipv4=true
use_short_pathnames=false
change_video_equalizer_on_startup=true
use_pausing_keep_force=true
correct_pts=-1
actions_to_run=
show_tag_in_window_title=true
time_to_kill_mplayer=1000

[gui]
fullscreen=false
start_in_fullscreen=false
compact_mode=false
stay_on_top=0
size_factor=100
resize_method=0
style=
move_when_dragging=true
center_window=false
center_window_if_outside=true
mouse_left_click_function=dvdnav_mouse
mouse_right_click_function=show_context_menu
mouse_double_click_function=fullscreen
mouse_middle_click_function=mute
mouse_xbutton1_click_function=
mouse_xbutton2_click_function=
mouse_wheel_function=2
wheel_function_cycle=30
wheel_function_seeking_reverse=false
seeking1=10
seeking2=60
seeking3=600
seeking4=30
update_while_seeking=false
time_slider_drag_delay=100
relative_seeking=false
precise_seeking=true
reset_stop=false
delay_left_click=false
language=
iconset=H2O
balloon_count=5
restore_pos_after_fullscreen=false
save_window_size_on_exit=true
close_on_finish=false
default_font=
pause_when_hidden=false
allow_video_movement=false
gui=DefaultGUI
gui_minimum_width=0
default_size=@Size(683 509)
hide_video_window_on_audio_files=true
report_mplayer_crashes=true
reported_mplayer_is_old=false
auto_add_to_playlist=true
media_to_add_to_playlist=0

[tv]
check_channels_conf_on_startup=true
initial_tv_deinterlace=4
last_dvb_channel=
last_tv_channel=

[proxy]
use_proxy=false
type=3
host=
port=0
username=
password=

[directories]
latest_dir=/home/data/Downloads/Complete
last_dvd_directory=
save_dirs=true

[defaults]
initial_sub_scale=5
initial_sub_scale_ass=1
initial_volume=40
initial_contrast=0
initial_brightness=0
initial_hue=0
initial_saturation=0
initial_gamma=0
initial_audio_equalizer=0, 0, 0, 0, 0, 0, 0, 0, 0, 0
initial_zoom_factor=1
initial_sub_pos=100
initial_volnorm=false
initial_postprocessing=false
initial_deinterlace=0
initial_audio_channels=0
initial_stereo_mode=0
initial_audio_track=1
initial_subtitle_track=1

[mplayer_info]
mplayer_detected_version=37540
mplayer_user_supplied_version=-1
is_mplayer2=false
mplayer2_detected_version=

[instances]
single_instance_enabled=true

[floating_control]
margin=0
width=70
animated=true
display_in_compact_mode=false
activation_area=1
hide_delay=3000

[history]
recents=/home/data/Downloads/Complete/Shrek.2.2004.BDRip_s.x264.RG.Tru.mkv
recents\max_items=10
urls=@Invalid()
urls\max_items=50

[filter_options]
blur=lc:-1.5
deblock=vb/hb
denoise_normal=
denoise_soft=2:1:2
gradfun=
noise=9ah:5ah
sharpen=lc:1.5
volnorm=1

EOF
}

CONFIG_DIR=$HOME/.config/smplayer
CONFIG_PATH=$CONFIG_DIR/smplayer.ini
DEFAULT_AUDIO_OUTPUT=pulse
DEFAULT_VIDEO_OUTPUT=x11

mkdir -p -v $CONFIG_DIR
make_smplayer_config
