#!/bin/bash
set -e

BASE="$HOME/Benchy"
RESULTS_FILE="$BASE/sbc-bench-results.txt"

COMPLETED_DIR="$BASE/DONE"
mkdir -p "$COMPLETED_DIR"

mkdir -p "$BASE"

echo "[*] Running sbc-bench..."

sudo /bin/bash "$BASE/sbc-bench.sh" -r 2>&1 | tee "$RESULTS_FILE"

echo ""
echo "[*] Results saved to $RESULTS_FILE"

mv "$(realpath "$0")" "$COMPLETED_DIR/"
