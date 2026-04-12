# Palindrome Number

## Problem Summary

Given an integer x, return true if x is a palindrome, and false otherwise.

A palindrome is a number that reads the same backward as forward.

---

# Approaches

This problem can be solved using two main approaches:

1. String Conversion (straightforward)
2. Reverse Half (optimized)

---

# 1. String Conversion Approach

## Idea

Convert the integer into a string and compare characters from both ends moving toward the center.

This leverages the symmetry property of palindromes.

---

## How it works

* Convert the integer to a string
* Iterate from the start to the middle of the string
* Compare each character with its mirrored counterpart
* If any mismatch is found, return false
* If all pairs match, return true

---

## Characteristics

* Simple and intuitive
* Easy to implement and understand
* Uses extra memory due to string conversion

---

## Complexity

* Time: O(n)
* Space: O(n)

---

# 2. Reverse Half Approach (Optimized)

## Idea

Instead of converting to a string, reverse only half of the number and compare it with the remaining half.

This avoids extra space and improves efficiency.

---

## How it works

* Handle edge cases (negative numbers and numbers ending in 0 except 0 itself)
* Initialize a variable to build the reversed half
* While the original number is greater than the reversed half:

    * Extract the last digit
    * Append it to the reversed half
    * Remove the last digit from the original number
* After the loop:

    * For even digits, compare both halves directly
    * For odd digits, ignore the middle digit using division

---

## Characteristics

* More efficient in space
* Avoids string conversion
* Slightly more complex logic
* Demonstrates strong understanding of number manipulation

---

## Complexity

* Time: O(log n)
* Space: O(1)

---

# Key Difference Between Approaches

| Aspect           | String Conversion   | Reverse Half              |
| ---------------- | ------------------- |---------------------------|
| Strategy         | Compare characters  | Reverse digits            |
| Time Complexity  | O(n)                | O(log n)                  |
| Space Complexity | O(n)                | O(1)                      |
| Idea             | Symmetry via string | Mathematical manipulation |
| Performance      | Good for simplicity | Optimal in space and time |

---

# Core Insight

The main improvement comes from changing the problem perspective:

* String Approach → "Compare mirrored positions"
* Reverse Half → "Move digits from one side to the other and compare halves"

---

# When to use each approach

## Use String Conversion when:

* You want a quick and readable solution
* Space complexity is not a concern
* You're solving an easy-level problem

## Use Reverse Half when:

* You want optimal space usage
* You want to demonstrate deeper understanding of the problem
* You want a faster solution
