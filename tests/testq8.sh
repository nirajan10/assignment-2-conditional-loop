#!/bin/bash

# Compile
gcc src/q8.c -o q8

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
output=$(./q8 | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Q8 pattern test passed"
else
  echo "❌ Q8 pattern test failed"
  exit 1
fi
