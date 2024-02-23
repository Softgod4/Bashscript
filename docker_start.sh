#!/bin/sh

if ( systemctl -q is-active docker.service || systemctl -q is-active docker.socket) then
        sudo systemctl disable docker.service
        sudo systemctl disable docker.socket
        sudo systemctl stop docker.service
        sudo systemctl stop docker.socket
else 
        sudo systemctl enable docker.service
        sudo systemctl enable docker.socket
        sudo systemctl start docker.service
        sudo systemctl start docker.socket
fi
