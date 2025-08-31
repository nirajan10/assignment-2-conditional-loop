#!/bin/bash

# Compile
gcc src/q_factors.c -o q_factors

# Test data: input -> expected factors
declare -A tests=(
  [6]="1 2 3 6"
  [12]="1 2 3 4 6 12"
  [7]="1 7"
  [1]="1"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and extract numbers
  output=$(echo "$input" | ./q_factors | tr -cd '0-9\n ' | tr '\n' ' ' | tr -s ' ')
  if [ "$output" = "$expected" ]; then
    echo "✅ Test with input $input passed"
  else
    echo "❌ Test with input $input failed"
    exit 1
  fi
done
