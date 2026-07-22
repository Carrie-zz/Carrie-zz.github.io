#!/bin/bash
# Pull the newest CV PDF from the CV folder into the site, then (optionally) publish.
# Source of truth: ~/.../Personal documents/CV/web-cv/  (edit the CV there, not here).
# Usage:  ./pull-cv.sh           # just pull the newest PDF into cv.pdf
#         ./pull-cv.sh --publish # pull, render, and deploy to GitHub Pages
set -e
WEBCV="/Users/carrie/Library/Mobile Documents/com~apple~CloudDocs/Personal documents/CV/web-cv"
HERE="$(cd "$(dirname "$0")" && pwd)"

newest=$(ls -t "$WEBCV"/*.pdf 2>/dev/null | head -1)
if [ -z "$newest" ]; then
  echo "ERROR: no PDF found in $WEBCV" >&2
  exit 1
fi
cp "$newest" "$HERE/cv.pdf"
echo "Pulled newest CV: $(basename "$newest")  ->  site/cv.pdf"

if [ "$1" = "--publish" ]; then
  cd "$HERE"
  quarto render >/dev/null
  quarto publish gh-pages --no-prompt --no-render
fi
