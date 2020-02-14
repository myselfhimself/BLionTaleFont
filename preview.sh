#!/bin/sh
# Usage: <this script> "text to preview"
# Requires: image magick
FONT_TEMPFILE=hop.png
FONT_FIXEDPREVIEW_FILE_FOR_README=preview.png
FONT_FILE=BLionTale-Regular.otf
PREVIEW_LABEL=${1:-ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz}
CHARS_LENGTH=$(echo $PREVIEW_LABEL | tr -d "\n" | wc -c | tr -d " ")
PREVIEW_WIDTH=$(($CHARS_LENGTH * 60))
if [ -z "$1" ]; then
    convert $FONT_FILE $FONT_FIXEDPREVIEW_FILE_FOR_README && echo "wrote $FONT_FIXEDPREVIEW_FILE_FOR_README for the README :)"
else
    convert -size "$PREVIEW_WIDTH"x70 -pointsize 120 -font "$FONT_FILE" label:"$PREVIEW_LABEL" $FONT_TEMPFILE; display $FONT_TEMPFILE; rm $FONT_TEMPFILE
fi
