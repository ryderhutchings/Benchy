#!/bin/bash
set -euo pipefail

BASE="$HOME/Benchy"
RESULTS_FILE="$BASE/pts-results.txt"

mkdir -p "$BASE"

LOG="$RESULTS_FILE"
exec > >(tee -a "$LOG") 2>&1

echo "[*] Running PTS benchmarks..."

phoronix-test-suite batch-run pts/encode-mp3
phoronix-test-suite batch-run pts/phpbench

echo "1" | phoronix-test-suite batch-run pts/x264
echo "1" | phoronix-test-suite batch-run pts/build-linux-kernel

echo ""
echo "[✓] Results saved to $RESULTS_FILE"
