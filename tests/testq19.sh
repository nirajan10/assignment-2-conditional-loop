#!/bin/bash

# Compile
gcc src/q_square_pattern.c -o q_square_pattern

# Test data: input -> expected pattern (spaces allowed)
declare -A tests
tests[2]="* *\n* *"
tests[3]="* * *\n* * *\n* * *"
tests[4]="* * * *\n* * * *\n* * * *\n* * * *"

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and normalize spaces at end of lines
  output=$(echo "$input" | ./q_square_pattern | sed 's/[[:space:]]*$//')
  if [ "$output" = "$expected" ]; then
    echo "✅ Test with input $input passed"
  else
    echo "❌ Test with input $input failed"
    exit 1
  fi
done
