# Screenshot OCR 

A Bash script that watches a directory for new screenshots, extracts text using Tesseract OCR, and copies both the text and image to the clipboard.

## Features
- Watches the `~/Pictures/Screenshots` directory for `.png` files.
- Extracts text from new screenshots with Tesseract.
- Copies the text to the clipboard.
- Restores the image to the clipboard after copying text.

## Requirements
- `tesseract-ocr`
- `inotify-tools`
- `xclip`

## Adding to Startup Applications
To run the script on startup in Ubuntu, there are plenty of ways to do it—but let’s be honest, my lazy a** went with this one:
1. Open the "Startup Applications" tool from the GUI.
2. Add a new entry with the following command:
   ```bash
   /usr/bin/bash -c "sleep 15 && ~/screenshot_ocr.sh&"
   ```
   this works and I’m good with it.

   ## Notes
- `WATCH_DIR` variable should be changed to screenshot directory.
- This repo is more of a backup than anything. I might swap Tesseract for PaddleOCR or experiment with other OCR services if I ever feel like it. But for now, it’s just chilling here, doing its job.
