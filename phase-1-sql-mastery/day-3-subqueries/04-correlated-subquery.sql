-- Day 3: SQL Subqueries
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Correlated Subquery
-- Practice: Products Above Their Category Average Price

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The outer query examines each product.
-- The inner query calculates the average Price
-- for that product's category.
--
-- The outer query returns products whose Price is
-- higher than their own category average.

SELECT
    p.ProductName,
    p.CategoryID,
    p.Price
FROM Products AS p
WHERE p.Price > (
    SELECT AVG(p2.Price)
    FROM Products AS p2
    WHERE p2.CategoryID = p.CategoryID
);

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- WHERE
-- Correlated subquery
-- AVG()
-- Table aliases
-- Comparison operator (>)
-- Outer-query and inner-query column comparison

-- =====================================================
-- Result
-- =====================================================
--
-- 27 records
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The alias p represents the current product in the
-- outer query.
--
-- The alias p2 represents products in the inner query.
--
-- This condition connects both queries:
--
-- p2.CategoryID = p.CategoryID
--
-- The inner query calculates the average Price for the
-- current product's category.
--
-- The outer query returns products priced above the
-- average Price of their own category.
