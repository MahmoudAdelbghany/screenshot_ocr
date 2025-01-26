#!/bin/bash
#sudo apt ibnstall tesseract inotifywait xclip
WATCH_DIR=~/Pictures/Screenshots
process_screenshot() {
    local file="$1"
    echo "Processing $file"
    text=$(tesseract "$file" stdout)
    echo "$text" | xclip -selection clipboard
    echo "Text copied to clipboard."
    sleep 0.5
    # restor the image on top of clipboard again
    xclip -selection clipboard -t image/png -i "$file"
}
inotifywait -m -e create --format "%w%f" "$WATCH_DIR" | while read NEWFILE
do
    if [[ "$NEWFILE" == *.png ]]; then
        process_screenshot "$NEWFILE"
    fi
done
