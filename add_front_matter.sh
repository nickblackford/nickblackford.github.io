#!/bin/bash
for dir in */ ; do
  readme="$dir/README.md"
  if [ -f "$readme" ]; then
    title=$(basename "$dir" | sed 's/_/ /g' | awk '{ for(i=1;i<=NF;i++) $i=toupper(substr($i,1,1)) substr($i,2); print }')
    if ! grep -q '^---' "$readme"; then
      echo -e "---\ntitle: $title\n---\n\n$(cat "$readme")" > "$readme.tmp"
      mv "$readme.tmp" "$readme"
    fi
  fi
done

