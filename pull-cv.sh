#!/bin/bash
# Pull the general CV PDF from the CV folder into the site, then (optionally) publish.
# Source of truth: ~/.../Personal documents/CV/CV_ZHAI Zhe.pdf  (edit the .tex there, not here).
# Usage:  ./pull-cv.sh           # just pull the CV into cv.pdf
#         ./pull-cv.sh --publish # pull, render, and deploy to GitHub Pages
set -e
CVPDF="/Users/carrie/Library/Mobile Documents/com~apple~CloudDocs/Personal documents/CV/CV_ZHAI Zhe.pdf"
HERE="$(cd "$(dirname "$0")" && pwd)"

if [ ! -f "$CVPDF" ]; then
  echo "ERROR: CV not found at $CVPDF" >&2
  exit 1
fi
cp "$CVPDF" "$HERE/cv.pdf"
echo "Pulled CV: $(basename "$CVPDF")  ->  site/cv.pdf"

if [ "$1" = "--publish" ]; then
  cd "$HERE"
  quarto render >/dev/null
  quarto publish gh-pages --no-prompt --no-render
fi
