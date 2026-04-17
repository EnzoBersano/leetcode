# Plus One

## Problem Summary
You are given an integer array `digits` representing a large non-negative integer, where each element is a single digit. The digits are stored in left-to-right order, with the most significant digit first.

Your task is to increment this integer by one and return the resulting array of digits.

The solution must handle cases where the number becomes larger (e.g., `[9,9,9] → [1,0,0,0]`).

---

# Approach: Right-to-Left Carry Simulation

## Idea
Instead of converting the array into a numeric type, simulate how addition works manually.

Start from the least significant digit (rightmost) and propagate the carry as needed.

---

## How it works
- Traverse the array from right to left
- For each digit:
    - If the digit is less than 9:
        - Increment it by 1
        - Return the array immediately (no further carry needed)
    - If the digit is 9:
        - Set it to 0
        - Continue to the next digit (carry propagation)
- If all digits were 9:
    - Create a new array with one extra digit
    - Set the first element to 1 and the rest to 0

---

## Characteristics
- Simulates real addition logic digit by digit
- Efficient and avoids unnecessary conversions
- Handles carry propagation naturally
- Works for arbitrarily large numbers

---

## Complexity
- Time: O(n)
- Space: O(1) (except when creating a new array in the all-9s case)

---

# Core Insight

The key idea is:

- If a digit is not 9 → increment and stop
- If a digit is 9 → it becomes 0 and the carry continues

This mirrors how addition is performed manually.

---

# Edge Cases

- Single digit:
    - `[9] → [1,0]`
- All digits are 9:
    - `[9,9,9] → [1,0,0,0]`
- No carry needed:
    - `[1,2,3] → [1,2,4]`

---

# When to use this approach

Use this approach when:
- Numbers are too large for standard numeric types
- You need to simulate arithmetic operations manually
- You want an optimal in-place solution

---

# Key Takeaway

Instead of converting the array into a number, think in terms of digits and simulate the addition process directly.

This shift in perspective allows you to solve the problem efficiently and correctly without risking overflow.