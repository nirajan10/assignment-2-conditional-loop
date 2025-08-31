#!/bin/bash

# Compile
gcc src/q14.c -o q14

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
  output=$(echo "$input" | ./q14 | tr -cd '0-9\n ' | tr '\n' ' ' | tr -s ' ' | sed 's/[[:space:]]*$//')
  if [ "$output" = "$expected" ]; then
    echo "✅ Q14 test with input $input passed"
  else
    echo "❌ Q14 test with input $input failed"
  fi
done
