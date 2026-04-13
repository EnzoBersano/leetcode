# Merge Sorted Array

## Problem Summary

You are given two sorted integer arrays `nums1` and `nums2`, and two integers `m` and `n`.

The goal is to merge `nums2` into `nums1` so that `nums1` becomes a single sorted array in non-decreasing order.

The result must be stored in-place inside `nums1`.

---

# Approaches

This problem can be solved using two main approaches:

1. Bubble Sort Merge (brute force in-place)
2. Two Pointers from the End (optimized in-place merge)

---

# 1. Bubble Sort Merge Approach (Brute Force In-Place)

## Idea

First copy all elements of `nums2` into the empty space of `nums1`, then repeatedly sort the entire array using adjacent swaps (bubble sort behavior).

This ignores the fact that both input arrays are already sorted.

---

## How it works

- Copy all elements of `nums2` into the unused positions of `nums1`
- Repeatedly iterate over the full array
- Swap adjacent elements if they are in the wrong order
- Continue until the array is sorted

---

## Characteristics

- Very simple to understand
- Does not use the sorted property of inputs
- Repeatedly fixes ordering through swaps
- Equivalent to applying bubble sort after merging

---

## Complexity

- Time: **O((m + n)²)**
- Space: **O(1)**

---

# 2. Two Pointers from the End (Optimized In-Place Merge)

## Idea

Use three pointers starting from the end of both arrays and fill `nums1` from back to front.

This avoids overwriting useful values and fully exploits the sorted property of both arrays.

---

## How it works

- Set pointer `i` at the end of valid elements in `nums1`
- Set pointer `j` at the end of `nums2`
- Set pointer `k` at the end of `nums1`
- Compare elements from the back
- Place the larger element at position `k`
- Move pointers accordingly

---

## Characteristics

- Fully uses sorted structure of both arrays
- Avoids overwriting values in `nums1`
- Efficient in both time and space
- Standard interview optimal solution

---

## Complexity

- Time: **O(m + n)**
- Space: **O(1)**

---

# Key Difference Between Approaches

| Aspect | Bubble Sort Merge | Two Pointer Merge |
|--------|------------------|-------------------|
| Strategy | Sort after merge | Merge intelligently |
| Time Complexity | O((m+n)²) | O(m+n) |
| Space Complexity | O(1) | O(1) |
| Idea | Fix ordering repeatedly | Build result from back |
| Efficiency | Inefficient | Optimal |

---

# Core Insight

The improvement comes from changing perspective:

- Bubble Sort Merge → "Fix the array until it becomes sorted"
- Two Pointer Merge → "Use the fact that both arrays are already sorted"

---

# When to use each approach

## Use Bubble Sort Merge when:

- You want a very simple brute-force solution
- You ignore constraints or are prototyping
- You are learning sorting behavior

## Use Two Pointer Merge when:

- You want optimal performance
- You are solving interview problems
- You want to exploit sorted inputs properly