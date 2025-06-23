#!/bin/bash

# Loop through each project directory (skip .git and any hidden/system folders)
for dir in */ ; do
  # Skip system and root directories
  [[ "$dir" == ".git/" || "$dir" == "_site/" || "$dir" == .* ]] && continue

  # Remove trailing slash
  dirname="${dir%/}"

  # Create the index.md file
  cat <<EOF > "$dir/index.md"
# $dirname

## Files

EOF

  # List files (not subfolders) in the project directory
  for file in "$dir"*; do
    if [[ -f "$file" ]]; then
      filename=$(basename "$file")
      echo "- [${filename}](./${filename})" >> "$dir/index.md"
    fi
  done

  # Add back link to homepage
  echo -e "\n[⬅️ Back to Home](../)" >> "$dir/index.md"
done
