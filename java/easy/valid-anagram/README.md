# Valid Anagram

## Problem Summary

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

An anagram is a word or phrase formed by rearranging the letters of another, using all original letters exactly once.

---

# Approaches

This problem can be solved using two main approaches:

1. Sorting (character ordering)
2. HashMap (frequency counting)

---

# 1. Sorting Approach

## Idea

If two strings are anagrams, sorting both strings will produce identical sequences of characters.

This approach relies on the fact that anagrams share the same characters in the same quantities.

---

## How it works

* Check if both strings have the same length
* Convert both strings into character arrays
* Sort both arrays
* Compare the sorted arrays
* If they are equal, the strings are anagrams

---

## Characteristics

* Simple and easy to implement
* Relies on built-in sorting
* Does not require additional data structures for counting
* Less efficient due to sorting cost

---

## Complexity

* Time: O(n log n)
* Space: O(n)

---

# 2. HashMap Approach (Optimized)

## Idea

Track the frequency of each character in one string and subtract using the second string.

If both strings are anagrams, all character counts should balance out to zero.

---

## How it works

* Check if both strings have the same length
* Create a map to store character frequencies
* Iterate over the first string and count occurrences of each character
* Iterate over the second string:

    * If a character does not exist in the map, return false
    * Decrease the frequency count for that character
    * If any count becomes negative, return false
* If all characters are processed successfully, return true

---

## Characteristics

* More efficient than sorting
* Uses extra memory to store frequencies
* Demonstrates a common pattern: frequency balancing
* Works for any character set (including Unicode)

---

## Complexity

* Time: O(n)
* Space: O(n)

---

# Key Difference Between Approaches

| Aspect           | Sorting            | HashMap           |
| ---------------- | ------------------ | ----------------- |
| Strategy         | Order characters   | Count frequencies |
| Time Complexity  | O(n log n)         | O(n)              |
| Space Complexity | O(n)               | O(n)              |
| Idea             | Rearrangement      | Balance counts    |
| Performance      | Simpler but slower | More optimal      |

---

# Core Insight

The main improvement comes from changing the problem perspective:

* Sorting → "Make both strings look the same by ordering"
* HashMap → "Track and balance character frequencies"

---

# When to use each approach

## Use Sorting when:

* You want a quick and simple implementation
* Input size is manageable
* You prioritize readability over performance

## Use HashMap when:

* You need optimal time complexity
* The problem involves frequency comparison
* You need to support larger or more complex character sets
