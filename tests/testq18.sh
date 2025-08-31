#!/bin/bash

# Compile
gcc src/q_multiplication_while.c -o q_multiplication_while

# Test data: input -> expected sequence
declare -A tests=(
  [2]="2 4 6 8 10 12 14 16 18 20"
  [5]="5 10 15 20 25 30 35 40 45 50"
  [1]="1 2 3 4 5 6 7 8 9 10"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and extract numbers only
  output=$(echo "$input" | ./q_multiplication_while | tr -cd '0-9\n ' | tr '\n' ' ' | tr -s ' ')
  if [ "$output" = "$expected" ]; then
    echo "✅ Test with input $input passed"
  else
    echo "❌ Test with input $input failed"
    exit 1
  fi
done
