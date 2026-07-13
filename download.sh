#!/bin/bash
set -euo pipefail

source config.env

OUT="pdfs"
total=$(grep -c . files.txt)
count=0

echo "Downloading $total PDFs"
echo "================================================"

while IFS='|' read -r folder filename; do
  [[ -z "$filename" ]] && continue
  count=$((count + 1))
  mkdir -p "$OUT/$folder"
  printf "[%d/%d] %s/%s\n" "$count" "$total" "$folder" "$filename"
  curl -L -# -H "user-agent: $USER_AGENT" -o "$OUT/$folder/$filename" "${BASEURL}${filename}"
done < files.txt

echo "Done! Downloaded $(find "$OUT" -name '*.pdf' | wc -l) files"
