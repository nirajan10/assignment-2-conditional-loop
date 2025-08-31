#!/bin/bash

# Compile
gcc src/q_pattern.c -o q_pattern

# Define the expected pattern (normalize spaces)
expected=$(cat <<'EOF'
*
**
***
****
*****
****
***
**
*
EOF
)

# Run the program and normalize output
output=$(./q_pattern | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Pattern test passed"
else
  echo "❌ Pattern test failed"
  exit 1
fi
