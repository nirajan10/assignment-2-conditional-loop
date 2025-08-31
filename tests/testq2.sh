#!/bin/bash

# Compile
gcc src/q_vote.c -o q_vote

# Test data: input -> expected keyword
declare -A tests=(
  [20]="eligible"
  [18]="eligible"
  [17]="not eligible"
  [0]="not eligible"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  output=$(echo "$input" | ./q_vote | tr '[:upper:]' '[:lower:]')
  if echo "$output" | grep -q "$expected"; then
    echo "✅ Test with age $input passed"
  else
    echo "❌ Test with age $input failed"
    exit 1
  fi
done
