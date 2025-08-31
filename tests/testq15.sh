#!/bin/bash

# Compile
gcc src/q15.c -o q15

# Test data: input -> expected keyword
declare -A tests=(
  [1]="not prime"
  [2]="prime"
  [3]="prime"
  [4]="not prime"
  [7]="prime"
  [12]="not prime"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and convert output to lowercase
  output=$(echo "$input" | ./q15 | tr '[:upper:]' '[:lower:]')
  if echo "$output" | grep -q "$expected"; then
    echo "✅ Q15 test with input $input passed"
  else
    echo "❌ Q15 test with input $input failed"
    exit 1
  fi
done
