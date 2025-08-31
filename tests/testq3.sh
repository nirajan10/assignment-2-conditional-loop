#!/bin/bash

# Compile
gcc src/q3.c -o q3

# Test data: input -> expected absolute value
declare -A tests=(
  [-5]="5"
  [7]="7"
  [0]="0"
  [-123]="123"
  [42]="42"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  output=$(echo "$input" | ./q3 | tr -d '[:space:]')
  if echo "$output" | grep -q "$expected"; then
    echo "✅ Q3 test with input $input passed"
  else
    echo "❌ Q3 test with input $input failed"
    exit 1
  fi
done
