#!/bin/bash

# Compile
gcc src/q_factorial_do.c -o q_factorial_do

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
  output=$(echo "$input" | ./q_factorial_do | tr -cd '0-9')
  if [ "$output" = "$expected" ]; then
    echo "✅ Test with input $input passed"
  else
    echo "❌ Test with input $input failed"
    exit 1
  fi
done
