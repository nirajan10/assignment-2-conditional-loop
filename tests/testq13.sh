#!/bin/bash

# Compile
gcc src/q_sum_even_1_50.c -o q_sum_even_1_50

# Run program and extract numbers only
output=$(./q_sum_even_1_50 | tr -cd '0-9')

# Expected sum
expected="650"

if [ "$output" = "$expected" ]; then
  echo "✅ Sum of even numbers test passed"
else
  echo "❌ Sum of even numbers test failed"
  exit 1
fi
