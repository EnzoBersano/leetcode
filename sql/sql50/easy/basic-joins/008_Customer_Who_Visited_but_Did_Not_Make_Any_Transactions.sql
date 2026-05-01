/*
LeetCode 1581 - Customer Who Visited but Did Not Make Any Transactions
Easy

Schema:
Visits(visit_id, customer_id)
Transactions(transaction_id, visit_id, amount)

Task:
Return customer ids who had visits with no transactions,
and count how many such visits each customer had.

Result can be returned in any order.
*/

SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;

-- Pattern: LEFT JOIN + IS NULL anti-match + GROUP BY
-- Key Insight: Keep all visits, remove matched transactions, then count remaining visits per customer.