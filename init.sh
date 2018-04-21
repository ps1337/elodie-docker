#!/bin/bash

# Add elodie user
adduser -u $PUID -g $PGID -s /bin/bash -D -g "Elodie" elodie && \
    mkdir -p /home/elodie && \
    chown -R elodie:elodie /home/elodie/

su -c /bin/bash elodie
