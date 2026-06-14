#!/bin/bash
set -e

BOOK_SLUG="ai-for-learning-experience-design"
METADATA="metadata.yaml"
OUTPUT_DIR="output"

mkdir -p "$OUTPUT_DIR"

COMBINED="$OUTPUT_DIR/combined.md"

# concatenate; metadata goes in via --metadata-file so stray '---' blocks
# in chapter prose are never parsed (and dropped) as YAML
cat chapters/*.md > "$COMBINED"

# chapter files reference images as ../images/ (relative to the source dir);
# pandoc runs from the book root, so rewrite to images/
sed -i 's|](\.\./images/|](images/|g' "$COMBINED"

pandoc "$COMBINED" \
  --from markdown-yaml_metadata_block \
  --metadata-file="$METADATA" \
  --to epub3 \
  --epub-cover-image=cover.jpg \
  --css=styles/kindle.css \
  --css=styles/kindle-book.css \
  --toc --toc-depth=2 \
  --output="$OUTPUT_DIR/$BOOK_SLUG.epub"

pandoc "$COMBINED" \
  --from markdown-yaml_metadata_block \
  --metadata-file="$METADATA" \
  --to html5 \
  --standalone \
  --css=styles/kindle.css \
  --css=styles/kindle-book.css \
  --toc \
  --output="$OUTPUT_DIR/$BOOK_SLUG.html"

echo "Built: $OUTPUT_DIR/$BOOK_SLUG.epub"
echo "Built: $OUTPUT_DIR/$BOOK_SLUG.html"
