#!/bin/bash

# Compile
gcc src/q_pattern_dec.c -o q_pattern_dec

# Define the expected pattern
expected=$(cat <<'EOF'
*****
****
***
**
*
EOF
)

# Run the program and normalize output
output=$(./q_pattern_dec | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Decreasing pattern test passed"
else
  echo "❌ Decreasing pattern test failed"
  exit 1
fi
