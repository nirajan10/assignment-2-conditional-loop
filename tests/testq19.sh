#!/bin/bash

gcc src/q19.c -o q19

# Test data: input -> expected pattern
declare -A tests
tests[2]=$(cat <<'EOF'
* *
* *
EOF
)

tests[3]=$(cat <<'EOF'
* * *
* * *
* * *
EOF
)

tests[4]=$(cat <<'EOF'
* * * *
* * * *
* * * *
* * * *
EOF
)

for input in "${!tests[@]}"; do
  expected="${tests[$input]}"
  # Run program and normalize trailing spaces on each line
  output=$(echo "$input" | ./q19 | sed 's/[[:space:]]*$//')

  if [ "$output" = "$expected" ]; then
    echo "✅ Q19 test with input $input passed"
  else
    echo "❌ Q19 test with input $input failed"
    echo 1
  fi
done
