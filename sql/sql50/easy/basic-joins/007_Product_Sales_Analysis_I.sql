/*
LeetCode 1068 - Product Sales Analysis I
Easy

Schema:
Sales(sale_id, product_id, year, quantity, price)
Product(product_id, product_name)

Task:
Return the product_name, year, and price for each sale in Sales.

Result can be returned in any order.
*/

SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id;

-- Pattern: INNER JOIN using foreign key relationship
-- Key Insight: Sales contains year/price, Product contains name; join by product_id to combine both sources.