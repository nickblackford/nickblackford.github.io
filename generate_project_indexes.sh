#!/bin/bash

for dir in */ ; do
  [[ "$dir" == ".git/" || "$dir" == "_site/" || "$dir" == .* ]] && continue

  folder="${dir%/}"
  filepath="${dir}index.md"

  echo "# $folder" > "$filepath"
  echo "" >> "$filepath"
  echo "## Files" >> "$filepath"
  echo "" >> "$filepath"

  for file in "$dir"*; do
    fname=$(basename "$file")
    if [[ "$fname" != "index.md" ]]; then
      echo "- [$fname](./$fname)" >> "$filepath"
    fi
  done

  echo "" >> "$filepath"
  echo "[← Back to main portfolio](../index.md)" >> "$filepath"
done

