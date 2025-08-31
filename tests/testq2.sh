#!/bin/bash

# Compile
gcc src/q2.c -o q2

# Test data: input -> expected keyword
declare -A tests=(
  [20]="eligible"
  [18]="eligible"
  [17]="not eligible"
  [0]="not eligible"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  output=$(echo "$input" | ./q2 | tr '[:upper:]' '[:lower:]')
  if echo "$output" | grep -q "$expected"; then
    echo "✅ Q2 test with age $input passed"
  else
    echo "❌ Q2 test with age $input failed"
    exit 1
  fi
done
