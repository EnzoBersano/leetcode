/*
LeetCode 1661 - Average Time of Process per Machine
Easy

Schema:
Activity(machine_id, process_id, activity_type, timestamp)

Task:
Return each machine_id with the average processing time of its processes.
Processing time = end timestamp - start timestamp.
Round to 3 decimals.

Result can be returned in any order.
*/

SELECT a.machine_id, ROUND(AVG(ac.timestamp-a.timestamp)::numeric,3) AS processing_time
FROM Activity a JOIN Activity ac
ON a.process_id = ac.process_id AND a.machine_id = ac.machine_id
WHERE ac.activity_type = 'end' AND a.activity_type = 'start'
GROUP BY a.machine_id;

-- Pattern: Self JOIN start/end rows + GROUP BY
-- Key Insight: Pair each process start with its end, compute duration, then average durations per machine.