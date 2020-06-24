#!/bin/bash
sudo mkdir -p /usr/share/fonts/opentype/bliontale/
sudo cp BLionTale-Regular.otf /usr/share/fonts/opentype/bliontale/
sudo fc-cache -f -v
