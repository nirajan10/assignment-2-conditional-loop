#!/bin/bash

# Compile
gcc src/q20.c -o q20

# Test data: input -> expected output (case-insensitive)
declare -A tests
tests[1]="Sunday"
tests[2]="Monday"
tests[3]="Tuesday"
tests[4]="Wednesday"
tests[5]="Thursday"
tests[6]="Friday"
tests[7]="Saturday"

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and convert to lowercase
  output=$(echo "$input" | ./q20 | tr '[:upper:]' '[:lower:]')
  expected_lc=$(echo "$expected" | tr '[:upper:]' '[:lower:]')

  if echo "$output" | grep -q "$expected_lc"; then
    echo "✅ Q20 test with input $input passed"
  else
    echo "❌ Q20 test with input $input failed"
    exit 1
  fi
done
