#!/bin/bash

# Compile
gcc src/q16.c -o q16

# Test data: input -> expected factorial
declare -A tests=(
  [0]="1"
  [1]="1"
  [3]="6"
  [5]="120"
  [7]="5040"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  output=$(echo "$input" | ./q16 | tr -cd '0-9')
  if [ "$output" = "$expected" ]; then
    echo "✅ Q16 test with input $input passed"
  else
    echo "❌ Q16 test with input $input failed"
    exit 1
  fi
done
