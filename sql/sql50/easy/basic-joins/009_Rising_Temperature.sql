/*
LeetCode 197 - Rising Temperature
Easy

Schema:
Weather(id, recordDate, temperature)

Task:
Return ids where temperature is higher than the previous day.

Result can be returned in any order.
*/

SELECT w.id
FROM Weather w
JOIN Weather we
ON w.recordDate = we.recordDate + 1
WHERE w.temperature > we.temperature;

-- Pattern: Self JOIN with date arithmetic
-- Key Insight: Join today's row to yesterday's row, then compare temperatures.