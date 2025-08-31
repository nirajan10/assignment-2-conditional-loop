#!/bin/bash

# Compile
gcc src/q6.c -o q6

# Test data: input -> expected sequence
declare -A tests=(
  [2]="2 4 6 8 10 12 14 16 18 20"
  [5]="5 10 15 20 25 30 35 40 45 50"
  [0]="0 0 0 0 0 0 0 0 0 0"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Extract only numbers from output
  output=$(echo "$input" | ./q6 | tr -cd '0-9\n ' | tr '\n' ' ' | tr -s ' ' | sed 's/[[:space:]]*$//')
  if [ "$output" = "$expected" ]; then
    echo "✅ Q6 test with input $input passed"
  else
    echo "❌ Q6 test with input $input failed"
    exit 1
  fi
done
