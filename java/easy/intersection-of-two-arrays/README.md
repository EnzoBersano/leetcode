# Intersection of Two Arrays

## Problem Summary

Given two integer arrays `nums1` and `nums2`, return an array of their intersection.

Each element in the result must be unique, and the result can be returned in any order.

---

# Approaches

This problem can be solved using two main approaches:

1. Brute Force (nested loops + manual duplicate check)
2. HashSet (optimized lookup)

---

# 1. Brute Force Approach

## Idea

Compare every element of `nums1` with every element of `nums2` to find matches.

Since the result must contain only unique elements, an additional check is required to avoid duplicates.

---

## How it works

- Iterate over each element in `nums1`
- For each element, iterate over `nums2`
- If a match is found:
    - Check if the element is already in the result list
    - If not, add it to the result
    - Break inner loop to avoid unnecessary comparisons
- Convert the result list into an array

---

## Characteristics

- Very straightforward
- No preprocessing required
- Uses nested loops and manual duplicate checking
- Inefficient for large inputs due to repeated comparisons

---

## Complexity

- Time: O(n × m × k) (can degrade to O(n³))
- Space: O(n)

---

# 2. HashSet Approach (Optimized)

## Idea

Use a HashSet to store elements from one array, then check membership while iterating through the second array.

A second HashSet ensures uniqueness in the result.

---

## How it works

- Create a set from `nums1`
- Iterate through `nums2`
- If an element exists in the first set, add it to the result set
- Convert the result set into an array

---

## Characteristics

- Efficient due to constant-time lookups
- Automatically handles uniqueness
- Common pattern for intersection problems
- Uses extra memory to improve performance

---

## Complexity

- Time: O(n + m)
- Space: O(n + m)

---

# Key Difference Between Approaches

| Aspect | Brute Force | HashSet |
|--------|------------|---------|
| Strategy | Compare all pairs | Use fast membership lookup |
| Time Complexity | O(n × m × k) | O(n + m) |
| Space Complexity | O(n) | O(n + m) |
| Idea | Exhaustive search | Set-based filtering |
| Performance | Slow for large inputs | Efficient |

---

# Core Insight

The main improvement comes from changing perspective:

- Brute Force → "Check every possible match and manually remove duplicates"
- HashSet → "Store what exists and query it efficiently"

---

# When to use each approach

## Use Brute Force when:

- Input size is small
- You want a simple baseline solution
- You are learning nested loop patterns

## Use HashSet when:

- You need fast lookup
- The problem involves membership or intersection
- Performance matters