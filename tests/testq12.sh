#!/bin/bash

# Compile
gcc src/q_numbers_1_100.c -o q_numbers_1_100

# Run program and extract numbers only
output=$(./q_numbers_1_100 | tr -cd '0-9\n ')

# Prepare expected sequence
expected=$(seq 1 100 | tr '\n' ' ' | tr -s ' ')

# Normalize output
output_norm=$(echo "$output" | tr '\n' ' ' | tr -s ' ')

if [ "$output_norm" = "$expected" ]; then
  echo "✅ Q_numbers_1_100 test passed"
else
  echo "❌ Q_numbers_1_100 test failed"
  exit 1
fi
