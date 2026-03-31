#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph and write it to the OUTPUT file using > (overwrite) and >> (append)
echo "=====================================" > "$OUTPUT"
echo "      MY OPEN SOURCE MANIFESTO       " >> "$OUTPUT"
echo "      Generated on: $DATE            " >> "$OUTPUT"
echo "=====================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Software is not just code; it is a reflection of how we share knowledge." >> "$OUTPUT"
echo "To me, the core of digital freedom is $FREEDOM. By relying on tools like" >> "$OUTPUT"
echo "$TOOL, we step away from corporate monopolies and embrace community." >> "$OUTPUT"
echo "If I could contribute my own piece to the open ecosystem, I would build" >> "$OUTPUT"
echo "$BUILD and release it under a license that ensures it remains free forever." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto successfully saved to $OUTPUT"
echo "--------------------------------------------------"

# Display the final generated text
cat "$OUTPUT"
