/*
LeetCode 595 - Big Countries
Easy

Schema:
World(name, continent, area, population, gdp)

Task:
Return country name, population, and area where:
- area is at least 3,000,000
- OR population is at least 25,000,000

Return in any order.
*/
SELECT c.name, c.population, c.area
FROM World c
WHERE c.area >= 3000000 OR c.population >= 25000000;

-- Pattern: WHERE filtering with OR conditions