#!/bin/bash

for dir in */ ; do
  index_md="${dir}index.md"
  title=$(basename "$dir" | sed 's/_/ /g' | awk '{for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2); print}')
  echo "# $title" > "$index_md"
  echo -e "\nFiles:\n" >> "$index_md"
  for file in "$dir"*; do
    fname=$(basename "$file")
    if [[ "$fname" != "index.md" && "$fname" =~ \.(pdf|ipynb|md)$ ]]; then
      echo "- [$fname](./$fname)" >> "$index_md"
    fi
  done
  echo -e "\n[← Back to main portfolio](../index.md)" >> "$index_md"
done

