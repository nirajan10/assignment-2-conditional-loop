#!/bin/bash

# Compile
gcc src/q13.c -o q13

# Run program and extract numbers only
output=$(./q13 | tr -cd '0-9')

# Expected sum
expected="650"

if [ "$output" = "$expected" ]; then
  echo "✅ Q13 Sum of even numbers test passed"
else
  echo "❌ Q13 Sum of even numbers test failed"
  exit 1
fi
