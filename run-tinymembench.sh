#!/bin/bash
set -e

BASE="$HOME/Benchy"
REPO_DIR="$BASE/tinymembench"
RESULTS_FILE="$BASE/memory-results.txt"

mkdir -p "$BASE"

cd "$REPO_DIR"

echo "[*] Running tinymembench memory benchmark..."

./tinymembench 2>&1 | tee "$RESULTS_FILE"

echo ""
echo "[*] Results saved to $RESULTS_FILE"
