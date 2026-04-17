# Maximum Subarray

## Problem Summary
Given an integer array `nums`, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

---

# Approaches

This problem can be solved using two main approaches:

1. Brute Force (nested loops with running sum)
2. Kadane’s Algorithm (optimized one-pass solution)

---

# 1. Brute Force Approach

## Idea
Try every possible subarray and compute its sum, keeping track of the maximum.

This approach directly explores all possible contiguous subarrays without making any optimizations.

---

## How it works
- Iterate over each index as a starting point
- For each starting index:
    - Expand the subarray to the right
    - Keep a running sum of elements
    - Update the maximum sum whenever a larger sum is found

---

## Characteristics
- Simple and intuitive
- Ensures all possible subarrays are evaluated
- Avoids recomputing sums from scratch by reusing partial sums
- Still inefficient for large inputs

---

## Complexity
- Time: O(n²)
- Space: O(1)

---

# 2. Kadane’s Algorithm (Optimized)

## Idea
Instead of checking all subarrays, decide at each position whether to:
- Extend the current subarray, or
- Start a new subarray from the current element

---

## How it works
- Initialize two variables:
    - `currentSum`: maximum sum ending at the current position
    - `maxSum`: global maximum found so far
- Iterate through the array:
    - At each element, choose the maximum between:
        - The current element alone
        - The current element plus the previous sum
    - Update the global maximum accordingly

---

## Characteristics
- Efficient and optimal solution
- Uses a greedy strategy
- Processes the array in a single pass
- Avoids unnecessary computations by discarding negative prefixes

---

## Complexity
- Time: O(n)
- Space: O(1)

---

# Key Difference Between Approaches

| Aspect | Brute Force | Kadane’s Algorithm |
|--------|------------|--------------------|
| Strategy | Evaluate all subarrays | Keep only useful running sums |
| Time Complexity | O(n²) | O(n) |
| Space Complexity | O(1) | O(1) |
| Idea | Exhaustive search | Greedy optimization |
| Performance | Slow for large inputs | Optimal |

---

# Core Insight

The main improvement comes from changing the problem perspective:

- Brute Force → "Check every possible subarray"
- Kadane → "At each position, decide whether continuing the current subarray helps or hurts"

By discarding subarrays with negative sums, the algorithm avoids unnecessary work and achieves linear time.

---

# When to use each approach

## Use Brute Force when:
- Input size is small
- You want a baseline solution
- You are learning or debugging

## Use Kadane’s Algorithm when:
- You need optimal performance
- The problem involves contiguous subarrays
- You can determine if previous results help or hurt future decisions