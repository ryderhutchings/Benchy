#!/bin/bash
set -e

BASE="$HOME/Benchy"
REPO_DIR="$BASE/tinymembench"
RESULTS_FILE="$BASE/memory-results.txt"

COMPLETED_DIR="$BASE/DONE"
mkdir -p "$COMPLETED_DIR"

mkdir -p "$BASE"

cd "$REPO_DIR"

echo "[*] Running tinymembench memory benchmark..."

./tinymembench 2>&1 | tee "$RESULTS_FILE"

echo ""
echo "[*] Results saved to $RESULTS_FILE"

mv "$(realpath "$0")" "$COMPLETED_DIR/"
