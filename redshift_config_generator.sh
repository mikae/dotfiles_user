#!/usr/bin/env bash

function make_redshift_config {
    REDSHIFT_CONFIG_TARGET=$HOME/.config/redshift.conf

    rm $REDSHIFT_CONFIG_TARGET
    touch $REDSHIFT_CONFIG_TARGET

    echo "Enter latitude:"
    read LATITUDE

    echo "Enter longitude:"
    read LONGITUDE

    cat > $REDSHIFT_CONFIG_TARGET << EOF
[manual]
lat=$LATITUDE
lon=$LONGITUDE
EOF

    unset REDSHIFT_CONFIG_TARGET
    unset LATITUDE
    unset LONGITUDE
}

make_redshift_config
