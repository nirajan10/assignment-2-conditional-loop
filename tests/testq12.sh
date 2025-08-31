#!/bin/bash

# Compile
gcc src/q12.c -o q12

# Run program and extract numbers only
output=$(./q12 | tr -cd '0-9\n ')

# Prepare expected sequence
expected=$(seq 1 100 | tr '\n' ' ' | tr -s ' ')

# Normalize output
output_norm=$(echo "$output" | tr '\n' ' ' | tr -s ' ')

if [ "$output_norm" = "$expected" ]; then
  echo "✅ Q12 test passed"
else
  echo "❌ Q12 test failed"
  exit 1
fi
