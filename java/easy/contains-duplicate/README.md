# Contains Duplicate

## Problem Summary

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

---

# Approaches

This problem can be solved using two main approaches:

1. Double Loop (brute force)
2. HashSet (optimized lookup)

---

# 1. Double Loop Approach

## Idea

Compare every pair of elements in the array to check if any two values are equal.

This approach directly explores all combinations without using extra data structures.

---

## How it works

* Iterate over each element in the array
* For each element, iterate over all subsequent elements
* If any pair has equal values, return true
* If no duplicates are found after all comparisons, return false

---

## Characteristics

* Simple and intuitive
* No extra data structures needed
* Inefficient due to repeated comparisons

---

## Complexity

* Time: O(n²)
* Space: O(1)

---

# 2. HashSet Approach (Optimized)

## Idea

Use a HashSet to track elements already seen.

If an element is encountered that already exists in the set, a duplicate has been found.

---

## How it works

* Create an empty HashSet
* Iterate through the array
* For each element:

    * Attempt to add it to the set
    * If the add operation fails, the element already exists → return true
* If the loop completes, return false

---

## Characteristics

* Efficient due to constant-time lookups
* Uses extra memory to improve performance
* Demonstrates a common pattern: "detect duplicates using a set"

---

## Complexity

* Time: O(n)
* Space: O(n)

---

# Key Difference Between Approaches

| Aspect           | Double Loop           | HashSet             |
| ---------------- | --------------------- | ------------------- |
| Strategy         | Compare all pairs     | Track seen elements |
| Time Complexity  | O(n²)                 | O(n)                |
| Space Complexity | O(1)                  | O(n)                |
| Idea             | Exhaustive comparison | Fast lookup         |
| Performance      | Slow for large inputs | Efficient           |

---

# Core Insight

The main improvement comes from changing the problem perspective:

* Double Loop → "Compare every pair"
* HashSet → "Check if I've already seen this element"

---

# When to use each approach

## Use Double Loop when:

* Input size is small
* You want a simple baseline solution
* You are learning or debugging

## Use HashSet when:

* You need efficient duplicate detection
* The problem involves checking existence or repetition
* Performance matters

