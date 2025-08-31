#!/bin/bash

# Compile
gcc src/q10.c -o q10

# Define the expected pattern
expected=$(cat <<'EOF'
  *
 ***
*****
EOF
)

# Run the program and normalize output
output=$(./q10 | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Q10 pattern test passed"
else
  echo "❌ Q10 pattern test failed"
  exit 1
fi
