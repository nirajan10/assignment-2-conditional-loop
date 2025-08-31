#!/bin/bash

# Compile
gcc src/q11.c -o q11

# Define the expected pattern
expected=$(cat <<'EOF'
*****
 ***
  *
EOF
)

# Run the program and normalize output
output=$(./q11 | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Q11 pattern test passed"
else
  echo "❌ Q11 pattern test failed"
  exit 1
fi
