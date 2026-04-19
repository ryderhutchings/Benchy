#!/bin/bash
set -e

REPO_DIR=~/tinymembench
RESULTS_FILE=~/Benchy/memory-results.txt

cd "$REPO_DIR"

echo "Running tinymembench memory benchmark..."
mkdir -p ~/Benchy

./tinymembench 2>&1 | tee "$RESULTS_FILE"

echo ""
echo "Results saved to $RESULTS_FILE"
