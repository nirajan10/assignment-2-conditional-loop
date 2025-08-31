#!/bin/bash

# Compile
gcc src/q9.c -o q9

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
output=$(./q9 | sed 's/[[:space:]]*$//')

if [ "$output" = "$expected" ]; then
  echo "✅ Q9 pattern test passed"
else
  echo "❌ Q9 pattern test failed"
  exit 1
fi
