#!/bin/bash

# Compile
gcc src/q_inverted_pyramid.c -o q_inverted_pyramid

# Define the expected pattern
expected=$(cat <<'EOF'
*****
 ***
  *
EOF
)

# Run the program and normalize output
output=$(./q_inverted_pyramid | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Inverted pyramid pattern test passed"
else
  echo "❌ Inverted pyramid pattern test failed"
  exit 1
fi
