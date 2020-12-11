#!/bin/sh
sudo mkdir -p /usr/share/fonts/opentype/bliontale/
sudo cp -f BLionTale-Regular.otf /usr/share/fonts/opentype/bliontale/
sudo fc-cache -f -v
