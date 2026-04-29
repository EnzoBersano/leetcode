/*
LeetCode 584 - Find Customer Referee
Easy

Schema:
Customer(id, name, referee_id)

Task:
Return customer names where:
- referee_id is not 2
- OR customer has no referee (NULL)

Return in any order.
*/

SELECT c.name
FROM Customer c
WHERE c.referee_id != 2 OR c.referee_id IS NULL;

-- Pattern: WHERE + NULL handling
-- Key Insight: NULL is not compared with <> , must use IS NULL