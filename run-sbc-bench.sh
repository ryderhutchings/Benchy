#!/bin/bash
set -e

RESULTS_FILE=~/benchmarks/sbc-bench-results.txt

mkdir -p ~/benchmarks

echo "Running sbc-bench..."

sudo /bin/bash ~/benchmarks/sbc-bench.sh -r 2>&1 | tee "$RESULTS_FILE"

echo ""
echo "Results saved to $RESULTS_FILE"
