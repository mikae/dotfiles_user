#!/usr/bin/env bash

function make_config {
    cat > $REDSHIFT_CONFIG_TARGET << EOF
[manual]
lat=$LATITUDE
lon=$LONGITUDE
EOF
}

REDSHIFT_CONFIG_TARGET=$HOME/.config/redshift.conf
LATITUDE=56.116766
LONGITUDE=47.262782

rm $REDSHIFT_CONFIG_TARGET
touch $REDSHIFT_CONFIG_TARGET
make_config
