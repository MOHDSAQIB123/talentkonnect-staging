#!/bin/bash

echo "🔍 Scanning modules/ for .js files containing JSX..."

find modules -type f -name "*.jsx" | while read file; do
  if grep -qE "<[A-Za-z]" "$file"; then
    newname="${file%.jsx}.js"
    echo "🔁 Renaming $file → $newname"
    mv "$file" "$newname"
  fi
done

echo "✅ Done renaming all JSx .jsx files to .jsx"
