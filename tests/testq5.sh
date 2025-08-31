#!/bin/bash

# Compile
gcc src/q5.c -o q5

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
  output=$(echo "$input" | ./q5 | tr -cd '0-9')
  if [ "$output" = "$expected" ]; then
    echo "✅ Q5 test with input $input passed"
  else
    echo "❌ Q5 test with input $input failed"
    exit 1
  fi
done
