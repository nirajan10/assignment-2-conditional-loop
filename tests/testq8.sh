#!/bin/bash

# Compile
gcc src/q_pattern_inc.c -o q_pattern_inc

# Define the expected pattern
expected=$(cat <<'EOF'
*
**
***
****
*****
EOF
)

# Run the program and normalize output
output=$(./q_pattern_inc | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Increasing pattern test passed"
else
  echo "❌ Increasing pattern test failed"
  exit 1
fi
