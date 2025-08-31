#!/bin/bash

# Compile
gcc src/q18.c -o q18

# Test data: input -> expected sequence
declare -A tests=(
  [2]="2 4 6 8 10 12 14 16 18 20"
  [5]="5 10 15 20 25 30 35 40 45 50"
  [1]="1 2 3 4 5 6 7 8 9 10"
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and extract numbers only
  output=$(echo "$input" | ./q18 | tr -cd '0-9\n ' | tr '\n' ' ' | tr -s ' ' | sed 's/[[:space:]]*$//')
  if [ "$output" = "$expected" ]; then
    echo "✅ Q18 test with input $input passed"
  else
    echo "❌ Q18 test with input $input failed"
    exit 1
  fi
done
