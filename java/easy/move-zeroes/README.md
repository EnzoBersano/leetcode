# Move Zeroes

## Problem Summary
Given an integer array `nums`, move all `0`s to the end while maintaining the relative order of the non-zero elements.

The operation must be done **in-place**, without making a copy of the array.

---

# Approaches

This problem can be solved using two main approaches:

1. Brute Force (swap-based, bubble-like behavior)
2. Two Pointers (in-place compaction, optimized)

---

# 1. Brute Force Approach

## Idea
Iterate through the array and, whenever a zero is found, look ahead for the next non-zero element and swap them.

This mimics a **bubble-sort-like behavior**, where zeros gradually “bubble” toward the end of the array.

---

## How it works
- Iterate through the array using index `i`
- If a zero is found at position `i`:
    - Scan forward using index `j` to find a non-zero element
    - Swap the zero with the next non-zero value
- Repeat this process until all zeros are pushed to the end

---

## Characteristics
- Simple and intuitive approach
- Preserves relative order of non-zero elements
- Performs many unnecessary swaps and repeated scans

---

## Complexity
- Time: O(n²)
- Space: O(1)

---

# 2. Two Pointers Approach (Optimized)

## Idea
Instead of swapping elements repeatedly, rewrite the array by placing all non-zero elements at the front, and then fill the remaining positions with zeros.

This approach treats the problem as a **stable in-place filtering** operation.

---

## How it works
- Use a pointer `k` to track the position where the next non-zero element should go
- Iterate through the array:
    - If the current element is non-zero:
        - Place it at position `k`
        - Increment `k`
- After processing all elements:
    - Fill the remaining positions (from `k` to end) with zeros

---

## Characteristics
- Efficient and optimal solution
- Preserves order of non-zero elements
- Avoids unnecessary swaps and repeated work
- Demonstrates a common two-pointer pattern

---

## Complexity
- Time: O(n)
- Space: O(1)

---

# Key Difference Between Approaches

| Aspect | Brute Force | Two Pointers |
|--------|------------|-------------|
| Strategy | Swap zeros forward repeatedly | Compact non-zero elements |
| Time Complexity | O(n²) | O(n) |
| Space Complexity | O(1) | O(1) |
| Idea | Repeated local fixes | Single-pass global rewrite |
| Performance | Inefficient for large inputs | Optimal |

---

# Core Insight

The main improvement comes from changing the perspective:

- Brute Force → “Move each zero individually toward the end”
- Two Pointers → “Move all non-zero elements forward in one pass”

This shift avoids redundant operations and reduces the problem to a linear scan.

---

# When to use each approach

## Use Brute Force when:
- You are exploring or learning the problem
- You want a straightforward, easy-to-understand solution
- Input size is small

## Use Two Pointers when:
- Performance matters
- You need to process arrays in-place efficiently
- The problem involves filtering or partitioning elements while preserving order