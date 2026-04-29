/*
LeetCode 1378 - Replace Employee ID With The Unique Identifier
Easy

Schema:
Employees(id, name)
EmployeeUNI(id, unique_id)

Task:
Show the unique_id of each employee.
If no unique_id exists, show NULL.

Return result in any order.
*/

SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;

-- Pattern: LEFT JOIN to preserve all rows from left table
-- Key Insight: Employees is the base table; unmatched rows get NULL.