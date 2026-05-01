/*
LeetCode 577 - Employee Bonus
Easy

Schema:
Employee(empId, name, supervisor, salary)
Bonus(empId, bonus)

Task:
Return the name and bonus of employees whose bonus is less than 1000
or who did not receive any bonus.

Result can be returned in any order.
*/

SELECT e.name, b.bonus
FROM Employee e LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;

-- Pattern: LEFT JOIN + filter including NULL matches
-- Key Insight: Employee is the base table because we must include workers
-- even if they have no bonus row. LEFT JOIN preserves all employees.
-- Rows without a bonus get NULL in b.bonus, which is captured by IS NULL.
-- Rows with bonus values under 1000 are also kept.