-- Day 2: Self-JOIN with the Products table
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Finding products in the same category

-- A Self-JOIN joins a table to itself.
-- The Products table is given two aliases:
-- p1 represents the first product.
-- p2 represents the second product.

SELECT
    p1.ProductName AS Product1,
    p2.ProductName AS Product2,
    p1.CategoryID
FROM Products p1
INNER JOIN Products p2
    ON p1.CategoryID = p2.CategoryID
WHERE p1.ProductID < p2.ProductID
ORDER BY
    p1.CategoryID,
    p1.ProductName;

-- Topics Used:
-- SELECT, WHERE, INNER JOIN, ORDER BY

-- Conclusion:
-- This Self-JOIN finds pairs of products that belong to the
-- same category.
--
-- The condition p1.ProductID < p2.ProductID prevents duplicate
-- pairs. For example, if Product A and Product B are matched,
-- the reverse pair Product B and Product A is excluded.
--
-- Without this condition, the result would contain duplicate
-- combinations and each product could also be matched with itself.
