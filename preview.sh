#!/bin/bash
# sudo apt-get install xdotool sxiv fzf
# curl -L https://git.io/JfpZZ > fontpreview && chmod +x fontpreview
./fontpreview -i BLionTale-Regular.otf -o preview.png
./fontpreview -i BLionTale-Regular.otf --preview-text="IL ÉTAIT UNE FOIS, \"L'HISTOIRE D'UNE FONTE\"\nLIONESQUE ET NORMANDE À LA FOIS...\n+/- DRÔLE \n\*BELLE, (AVEC: UN CŒUR «COMME ÇA \!»)" -o preview2.png
