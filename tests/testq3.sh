#!/bin/bash

# Compile
gcc src/q_abs.c -o q_abs

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
  output=$(echo "$input" | ./q_abs | tr -d '[:space:]')
  if echo "$output" | grep -q "$expected"; then
    echo "✅ Test with input $input passed"
  else
    echo "❌ Test with input $input failed"
    exit 1
  fi
done
