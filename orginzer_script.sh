#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "Hello, $USER"
echo "This shell script organizes files in: $SCRIPT_DIR"

mkdir -p Organized_items

mkdir -p photos
mv -- *.jpg *.jpeg *.png *.webp photos/ 2>/dev/null || true

mkdir -p PDFs
mv -- *.pdf PDFs/ 2>/dev/null || true

mkdir -p Text
mv -- *.txt Text/ 2>/dev/null || true

# Organize (by folder name)
mkdir -p study_file
for folder in math1 python "Scintific Thinking" "structured programming" "computer fundamentals" concepts "Numerical Analysis"; do
  [ -d "$folder" ] && mv -- "$folder" study_file/
done

mv -- photos PDFs Text study_file Organized_items/ 2>/dev/null || true

cd Organized_items
ls
echo "These are the folders that you have!"
