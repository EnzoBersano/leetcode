# Best Time to Buy and Sell Stock
## Problem Summary
You are given an array `prices` where `prices[i]` represents the stock price on day `i`.

You want to maximize profit by:

- Buying one stock on a given day
- Selling it on a future day

Return the maximum profit you can achieve from this transaction. If no profit is possible, return `0`.

## Approaches

This problem can be solved using two main approaches:

- Brute Force (check all possible buy/sell pairs)
- Greedy One-Pass (optimized solution)

### 1. Brute Force Approach

#### Idea

Evaluate every possible pair of days where the buy day comes before the sell day, and compute the profit for each pair.

This approach explores all valid combinations without making any assumptions or optimizations.

#### How it works

- Iterate through each day as a potential buy day
- For each buy day, iterate through all future days as possible sell days
- Calculate the profit for each pair
- Track the maximum profit found

#### Characteristics

- Straightforward and easy to understand
- Guarantees correctness by checking all possibilities
- Performs many redundant calculations

#### Complexity

- **Time:** O(n²)
- **Space:** O(1)

### 2. Greedy One-Pass Approach (Optimized)

#### Idea

Instead of comparing all pairs, track the minimum price seen so far and compute the best profit at each step.

At each day, assume you sell on that day and calculate the profit based on the lowest price encountered earlier.

#### How it works

- Initialize a variable to store the minimum price so far
- Iterate through the array once:
    - If the current price is lower than the minimum, update the minimum
    - Otherwise, calculate the profit using the current price and the minimum
    - Update the maximum profit if the new profit is higher
- Return the maximum profit found

#### Characteristics

- Efficient and optimal solution
- Uses constant extra space
- Avoids redundant comparisons by keeping track of past information

#### Complexity

- **Time:** O(n)
- **Space:** O(1)

## Key Difference Between Approaches

| Aspect | Brute Force | Greedy One-Pass |
|--------|-------------|-----------------|
| Strategy | Try all valid pairs | Track best past price |
| Time Complexity | O(n²) | O(n) |
| Space Complexity | O(1) | O(1) |
| Idea | Exhaustive search | Incremental optimization |
| Performance | Inefficient for large inputs | Optimal |

## Core Insight

The key improvement comes from shifting perspective:

- **Brute Force** → "Check every possible transaction"
- **Greedy** → "At each day, what is the best profit I can achieve if I sell today?"

This works because the problem only requires a single transaction, allowing us to keep track of the best buying opportunity seen so far.

## When to use each approach

### Use Brute Force when:
- You are learning the problem
- You want a baseline solution
- Input size is small

### Use Greedy One-Pass when:
- Performance matters
- The problem involves sequential decisions over time
- You can maintain a "best so far" value and update it incrementally