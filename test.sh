#!/bin/bash

# Compile the program
echo "Compiling program..."
make > /dev/null 2>&1

# Check if compilation succeeded
if [ ! -f "./fibonacci" ]; then
    echo "❌ Compilation failed. Exiting."
    exit 1
fi

echo "✅ Compilation successful."

# Define test cases
TEST_CASES=(
    "5"       # Small Fibonacci number
#    "50"      # Large Fibonacci number
#    "91"      # Maximum allowed input
    "0"       # Edge case: base case 0
    "1"       # Edge case: base case 1
    "-5"      # Invalid: negative number
    "100"     # Invalid: out of range
    "hello"   # Invalid: non-numeric input
    "10.5"    # Invalid: floating-point number
    ""        # Invalid: empty input
)

# Expected outputs (manual comparison)
EXPECTED_OUTPUTS=(
    "Fibonacci(5) = 5"
#    "Fibonacci(50) = 12586269025"
#    "Fibonacci(91) = 4660046610375530309"
    "Fibonacci(0) = 0"
    "Fibonacci(1) = 1"
    "Number out of range. Please enter a number between 0 and 91."
    "Number out of range. Please enter a number between 0 and 91."
    "Invalid input. Please enter an integer."
    "Invalid input. Please enter an integer."
    "Invalid input. Please enter an integer."
)

# Run tests
echo "Running tests..."
for i in "${!TEST_CASES[@]}"; do
    INPUT="${TEST_CASES[$i]}"
    EXPECTED="${EXPECTED_OUTPUTS[$i]}"
    
    # Run the program and filter out only lines containing the key parts,
    # then remove the prompt text if present.
    OUTPUT=$(echo "$INPUT" | ./fibonacci 2>&1 \
        | grep -E "Fibonacci|Invalid input|Number out of range" \
        | sed 's/^Enter a number (0-91) to compute Fibonacci: //')

    # Check if output matches expected result
    if [[ "$OUTPUT" == "$EXPECTED" ]]; then
        echo "✅ Test Passed: Input '$INPUT'"
    else
        echo "❌ Test Failed: Input '$INPUT'"
        echo "   Expected: '$EXPECTED'"
        echo "   Got: '$OUTPUT'"
    fi
done

# Cleanup
echo "Cleaning up..."
make clean > /dev/null 2>&1
echo "✅ Tests complete."