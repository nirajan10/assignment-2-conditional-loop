#!/bin/bash

# Compile
gcc src/q4.c -o q4

# Run program and extract numbers only
output=$(./q4 | tr -cd '0-9\n ')

# Prepare expected sequence
expected=$(seq 2 2 100 | tr '\n' ' ' | tr -s ' ')

# Normalize output
output_norm=$(echo "$output" | tr '\n' ' ' | tr -s ' ')

if [ "$output_norm" = "$expected" ]; then
  echo "✅ Q4 test passed"
else
  echo "❌ Q4 test failed"
  exit 1
fi
