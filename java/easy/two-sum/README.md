
# Two Sum

## Problem Summary
Given an array of integers and a target value, find the indices of the two numbers that add up to the target.

Each input has exactly one solution, and you may not use the same element twice.

---

# Approaches

This problem can be solved using two main approaches:

1. Brute Force (nested loops)
2. HashMap (optimized lookup)

---

# 1. Brute Force Approach

## Idea
Try every possible pair of elements in the array and check if their sum equals the target.

This approach does not assume any prior knowledge and directly explores all combinations.

---

## How it works
- Iterate over each element in the array
- For each element, iterate over all subsequent elements
- Check whether the sum equals the target
- Return indices if a valid pair is found

---

## Characteristics
- Simple and intuitive
- No extra data structures needed
- Inefficient for large inputs due to repeated comparisons

---

## Complexity
- Time: O(n²)
- Space: O(1)

---

# 2. HashMap Approach (Optimized)

## Idea
Use a HashMap to store numbers already seen while iterating.

For each element, check if its complement (target - current value) has already been seen.

---

## How it works
- Create a map to store previously seen values and their indices
- Iterate through the array
- For each element:
    - Compute its complement
    - Check if complement exists in the map
    - If it exists, return the solution
    - Otherwise store current value in the map

---

## Characteristics
- Much faster due to constant-time lookups
- Uses extra memory to trade for speed
- Demonstrates a common optimization pattern in algorithms

---

## Complexity
- Time: O(n)
- Space: O(n)

---

# Key Difference Between Approaches

| Aspect | Brute Force | HashMap |
|--------|-------------|---------|
| Strategy | Try all pairs | Use memory to avoid recomputation |
| Time Complexity | O(n²) | O(n) |
| Space Complexity | O(1) | O(n) |
| Idea | Search | Lookup |
| Performance | Slow for large inputs | Efficient |

---

# Core Insight

The main improvement comes from changing the problem perspective:

- Brute Force → "Check every possibility"
- HashMap → "Remember what I've already seen and query it"

---

# When to use each approach

## Use Brute Force when:
- Input size is small
- You want a baseline solution
- You are learning or prototyping

## Use HashMap when:
- You need faster lookup of previously seen values
- The problem involves pairs, complements, or frequencies
- Optimization is required