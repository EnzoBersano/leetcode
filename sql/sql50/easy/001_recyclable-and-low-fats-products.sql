/*
LeetCode 1757 - Recyclable and Low Fat Products
Easy

Schema:
Products(product_id, low_fats, recyclable)

Task:
Return ids where low_fats='Y' and recyclable='Y'
*/
SELECT p.product_id
FROM Products p
WHERE p.low_fats = 'Y'
AND p.recyclable = 'Y';

-- Pattern: Basic WHERE filtering