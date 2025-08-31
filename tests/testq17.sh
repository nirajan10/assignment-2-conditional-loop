#!/bin/bash

# Compile
gcc src/q_countdown.c -o q_countdown

# Test data: input -> expected sequence
declare -A tests=(
  [5]="5 4 3 2 1"
  [3]="3 2 1"
  [1]="1"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and extract numbers only
  output=$(echo "$input" | ./q_countdown | tr -cd '0-9\n ' | tr '\n' ' ' | tr -s ' ')
  if [ "$output" = "$expected" ]; then
    echo "✅ Test with input $input passed"
  else
    echo "❌ Test with input $input failed"
    exit 1
  fi
done
