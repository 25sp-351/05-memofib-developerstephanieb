# Fibonacci Program Test Cases

## **1. Valid Inputs (Basic Functionality)**
### **Test 1.1: Small Fibonacci Number**
- **Input:** `5`
- **Expected Output:** `Fibonacci(5) = 5`
- **Reason:** Ensures basic correctness of the Fibonacci sequence.

### **Test 1.2: Larger Fibonacci Number**
- **Input:** `50`
- **Expected Output:** `Fibonacci(50) = 12586269025`
- **Reason:** Ensures the program handles large numbers and recursion depth correctly.

### **Test 1.3: Maximum Allowed Input**
- **Input:** `91`
- **Expected Output:** `Fibonacci(91) = 4660046610375530309`
- **Reason:** Verifies the program correctly calculates the largest Fibonacci number supported by `long long`.

---

## **2. Edge Cases**
### **Test 2.1: Smallest Fibonacci Number**
- **Input:** `0`
- **Expected Output:** `Fibonacci(0) = 0`
- **Reason:** Ensures the program correctly handles the base case of the Fibonacci sequence.

### **Test 2.2: Fibonacci of 1**
- **Input:** `1`
- **Expected Output:** `Fibonacci(1) = 1`
- **Reason:** Ensures the program correctly returns `1` for the base case `Fibonacci(1)`.

---

## **3. Invalid Inputs (Error Handling)**
### **Test 3.1: Negative Number**
- **Input:** `-5`
- **Expected Output:** Error message: `"Number out of range. Please enter a number between 0 and 91."`
- **Reason:** Ensures the program rejects negative numbers.

### **Test 3.2: Number Greater than 91**
- **Input:** `100`
- **Expected Output:** Error message: `"Number out of range. Please enter a number between 0 and 91."`
- **Reason:** Ensures input validation prevents integer overflow by restricting the maximum value.

### **Test 3.3: Non-Numeric Input**
- **Input:** `"hello"`
- **Expected Output:** Error message: `"Invalid input. Please enter an integer."`
- **Reason:** Ensures the program correctly rejects non-numeric inputs.

### **Test 3.4: Floating-Point Number**
- **Input:** `10.5`
- **Expected Output:** Error message: `"Invalid input. Please enter an integer."`
- **Reason:** Ensures the program does not accept floating-point numbers.

### **Test 3.5: Empty Input**
- **Input:** (User presses Enter without typing a number)
- **Expected Output:** Error message: `"Invalid input. Please enter an integer."`
- **Reason:** Ensures the program handles empty input gracefully.

---

## Build and Run

1. Compile 
   ```bash
   make

2. Run the Automated Test Script
   ```bash
   chmod +x test.sh
   ./test.sh
