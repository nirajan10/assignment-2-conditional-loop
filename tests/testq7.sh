#!/bin/bash

# Compile
gcc src/q7.c -o q7

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
output=$(./q7 | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Q7 Pattern test passed"
else
  echo "❌ Q7 Pattern test failed"
  exit 1
fi
