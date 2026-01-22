#!/usr/bin/env bash

# Create temporary file for screenshot
temp_image=$(mktemp /tmp/ocr-screenshot-XXXXXX.png)

# Capture screen area with grimblast
grimblast --freeze save area "$temp_image"

# Perform OCR and copy to clipboard
tesseract "$temp_image" stdout 2>/dev/null | wl-copy

# Clean up temporary file
rm -f "$temp_image"
