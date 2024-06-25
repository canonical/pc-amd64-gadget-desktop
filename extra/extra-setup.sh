#!/bin/sh

if [ -d /var/snap/network-manager/current/ ]; then
    mkdir -p /var/snap/network-manager/current/conf.d
    cat > /var/snap/network-manager/current/conf.d/disable-polkit.conf <<EOF
[main]
auth-polkit=false
EOF
fi
