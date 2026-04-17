# Two Sum II - Input Array Is Sorted

## Problem Summary
Given a 1-indexed array of integers `numbers` that is sorted in non-decreasing order, find two numbers such that they add up to a specific target.

Return the indices of the two numbers (1-based) such that:
- index1 < index2
- The sum equals the target

- Return the indices of the two numbers index1 and index2, 
each incremented by one, as an integer array [index1, index2] of length 2.

You must use only constant extra space.

---

# Approaches

This problem can be solved using two main approaches:

1. Brute Force (check all pairs)
2. Two Pointers (optimized using sorted property)

---

# 1. Brute Force Approach

## Idea
Try every possible pair of elements and check if their sum equals the target.

This approach does not take advantage of the sorted nature of the array.

---

## How it works
- Iterate through each index as the first element
- For each index, iterate through all subsequent indices
- Check whether the sum equals the target
- Return the indices once the correct pair is found

---

## Characteristics
- Simple and straightforward
- Guaranteed to find the correct solution
- Performs unnecessary comparisons
- Does not use any special properties of the input

---

## Complexity
- Time: O(n²)
- Space: O(1)

---

# 2. Two Pointers Approach (Optimized)

## Idea
Use two pointers at opposite ends of the array and move them inward based on how the current sum compares to the target.

This approach leverages the fact that the array is sorted.

---

## How it works
- Initialize one pointer at the beginning (`left`) and one at the end (`right`)
- Compute the sum of the two elements
- If the sum is greater than the target:
    - Move the right pointer left (to decrease the sum)
- If the sum is less than the target:
    - Move the left pointer right (to increase the sum)
- If the sum equals the target:
    - Return the indices
- Repeat until the solution is found

---

## Characteristics
- Efficient and optimal solution
- Uses constant extra space
- Eliminates impossible pairs at each step
- Relies on sorted order to guide pointer movement

---

## Complexity
- Time: O(n)
- Space: O(1)

---

# Key Difference Between Approaches

| Aspect | Brute Force | Two Pointers |
|--------|------------|--------------|
| Strategy | Try all pairs | Narrow search space |
| Time Complexity | O(n²) | O(n) |
| Space Complexity | O(1) | O(1) |
| Uses sorted property | No | Yes |
| Performance | Inefficient | Optimal |

---

# Core Insight

The main improvement comes from changing the perspective:

- Brute Force → "Check every possible pair"
- Two Pointers → "Use sorted order to eliminate invalid pairs"

Because the array is sorted:
- Moving the left pointer increases the sum
- Moving the right pointer decreases the sum

This allows us to discard large portions of the search space in each step.

---

# How to Recognize the Two Pointers Pattern

You can identify this problem as a two-pointer candidate by noticing:

- The array is **sorted**
- You are asked to find a **pair of elements**
- The goal involves a **sum comparison (greater, smaller, equal)**
- There is a requirement for **constant space**

These signals suggest:
- You can start from both ends
- Use the sorted property to decide pointer movement
- Avoid checking all combinations

---

# When to use each approach

## Use Brute Force when:
- You are learning or validating the problem
- Input size is small
- You want a baseline solution

## Use Two Pointers when:
- The array is sorted
- You need optimal performance
- You want to reduce time complexity without extra space