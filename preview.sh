#!/bin/sh
# Usage: <this script> "text to preview"
# Requires: image magick
FONT_TEMPFILE=hop.png
convert -size 165x70 -pointsize 120 -font MyFont-Regular.otf label:"$1" $FONT_TEMPFILE; display $FONT_TEMPFILE; rm $FONT_TEMPFILE
