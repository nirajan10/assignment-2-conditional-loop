#!/bin/bash

# Compile
gcc src/q17.c -o q17

# Test data: input -> expected sequence
declare -A tests=(
  [5]="5 4 3 2 1"
  [3]="3 2 1"
  [1]="1"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and extract numbers only
  output=$(echo "$input" | ./q17 | tr -cd '0-9\n ' | tr '\n' ' ' | tr -s ' ' | sed 's/[[:space:]]*$//')
  if [ "$output" = "$expected" ]; then
    echo "✅ Q17 test with input $input passed"
  else
    echo "❌ Q17 test with input $input failed"
    exit 1
  fi
done
