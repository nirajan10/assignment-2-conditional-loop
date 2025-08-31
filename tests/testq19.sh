#!/bin/bash

# Compile
gcc src/q19.c -o q19

# Test data: input -> expected pattern (spaces allowed)
declare -A tests
tests[2]="* *\n* *"
tests[3]="* * *\n* * *\n* * *"
tests[4]="* * * *\n* * * *\n* * * *\n* * * *"

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and normalize spaces at end of lines
  output=$(echo "$input" | ./q19 | sed 's/[[:space:]]*$//' | sed 's/[[:space:]]*$//')
  if [ "$output" = "$expected" ]; then
    echo "✅ Q19 test with input $input passed"
  else
    echo "❌ Q19 test with input $input failed"
    exit 1
  fi
done
