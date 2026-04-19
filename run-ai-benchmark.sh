#!/bin/bash
set -e

REPO_DIR=~/ai-benchmarks
RESULTS_FILE=~/Benchy/ai-results.txt

cd "$REPO_DIR"

echo "Running AI / LLM inference benchmarks..."
mkdir -p ~/Benchy

declare -a models=("tinyllama:1.1b" "deepseek-r1:1.5b" "llama3.2:3b")

for model in "${models[@]}"; do
    echo ""
    echo "Benchmarking $model..."
    ./obench.sh -m "$model" -c 3 --markdown 2>&1 | tee -a "$RESULTS_FILE"
done

echo ""
echo "Results saved to $RESULTS_FILE"
