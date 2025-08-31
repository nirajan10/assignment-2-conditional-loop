#!/bin/bash

# Compile
gcc src/q_pyramid.c -o q_pyramid

# Define the expected pattern
expected=$(cat <<'EOF'
  *
 ***
*****
EOF
)

# Run the program and normalize output
output=$(./q_pyramid | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Pyramid pattern test passed"
else
  echo "❌ Pyramid pattern test failed"
  exit 1
fi
