#!/bin/bash

echo "============================================================"
echo "       Open Source Manifesto Generator"
echo "============================================================"
echo ""
echo "  Answer three questions to generate your personal"
echo "  open source manifesto. Be honest and thoughtful!"
echo ""
echo "------------------------------------------------------------"

read -p "  1. Name one open-source tool you use every day: " TOOL
echo ""

read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
echo ""

read -p "  3. Name one thing you would build and share freely: " BUILD
echo ""

# Default values if user leaves blank
[ -z "$TOOL" ] && TOOL="open source software"
[ -z "$FREEDOM" ] && FREEDOM="openness"
[ -z "$BUILD" ] && BUILD="a useful open-source project"

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "------------------------------------------------------------"
echo "  Generating your manifesto..."
echo ""

{
echo "============================================================"
echo "  MY OPEN SOURCE MANIFESTO"
echo "  Generated on: $DATE"
echo "  Author: $(whoami)"
echo "============================================================"
echo ""
echo "  Every day, I rely on $TOOL — a tool that exists because"
echo "  someone chose to build it openly and share it with the world."
echo "  To me, 'freedom' means $FREEDOM."
echo ""
echo "  Open source allows collaboration, learning, and innovation."
echo "  The tools we use today exist because people chose to share"
echo "  their work freely instead of keeping it private."
echo ""
echo "  One day, I want to build $BUILD"
echo "  and share it with the world so others can use,"
echo "  learn from it, and improve it."
echo ""
echo "  This is my commitment to open source."
echo ""
echo "============================================================"
} > "$OUTPUT"

echo "  Done! Your manifesto has been saved to: $OUTPUT"
echo ""
echo "------------------------------------------------------------"
echo "  Here is what was written:"
echo "------------------------------------------------------------"
echo ""

cat "$OUTPUT"

echo ""
echo "============================================================"
