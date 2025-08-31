#!/bin/bash

# Compile
gcc src/q_even.c -o q_even

# Run program and extract numbers only
output=$(./q_even | tr -cd '0-9\n ')

# Prepare expected sequence
expected=$(seq 2 2 100 | tr '\n' ' ' | tr -s ' ')

# Normalize output
output_norm=$(echo "$output" | tr '\n' ' ' | tr -s ' ')

if [ "$output_norm" = "$expected" ]; then
  echo "✅ Q_even test passed"
else
  echo "❌ Q_even test failed"
  exit 1
fi
