#!/bin/bash

# Compile
gcc src/q1.c -o q1

# Test case 1: input = 5 → positive
output=$(echo "5" | ./q1 | tr '[:upper:]' '[:lower:]')
if echo "$output" | grep -q "positive"; then
  echo "✅ Q1 test 1 passed"
else
  echo "❌ Q1 test 1 failed"
  exit 1
fi

# Test case 2: input = -3 → negative
output=$(echo "-3" | ./q1 | tr '[:upper:]' '[:lower:]')
if echo "$output" | grep -q "negative"; then
  echo "✅ Q1 test 2 passed"
else
  echo "❌ Q1 test 2 failed"
  exit 1
fi

# Test case 3: input = 0 → zero
output=$(echo "0" | ./q1 | tr '[:upper:]' '[:lower:]')
if echo "$output" | grep -q "zero"; then
  echo "✅ Q1 test 3 passed"
else
  echo "❌ Q1 test 3 failed"
  exit 1
fi
