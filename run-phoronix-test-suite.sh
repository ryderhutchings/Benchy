#!/bin/bash
set -euo pipefail

BASE="$HOME/Benchy"
RESULTS_FILE="$BASE/sbc-general-benchmark-results.txt"

mkdir -p "$BASE"

if [ ! -f "$BASE/sbc-general-benchmark/sbc-general-benchmark.sh" ]; then
    echo "[!] sbc-general-benchmark.sh not found in $BASE"
    exit 1
fi

echo "[*] Running sbc-general-benchmark (PTS wrapper)..."

sudo bash "$BASE/sbc-general-benchmark/sbc-general-benchmark.sh" -r 2>&1 | tee "$RESULTS_FILE"

echo ""
echo "[✓] Results saved to $RESULTS_FILE"

# If you see:
# [*] Running sbc-general-benchmark (PTS wrapper)...
# Reading package lists...
# Building dependency tree...
# Reading state information...
# E: Unable to locate package php8.2-cli
# E: Couldn't find any package by glob 'php8.2-cli'
# E: Couldn't find any package by regex 'php8.2-cli'
# E: Unable to locate package php8.2-xml
# E: Couldn't find any package by glob 'php8.2-xml'
# E: Couldn't find any package by regex 'php8.2-xml'
#
# Do this: bash PHP_VERSION="8.4" run-phoronix-test-suite.sh
