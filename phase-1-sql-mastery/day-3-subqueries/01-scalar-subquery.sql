-- Day 3: SQL Subqueries
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Scalar Subquery
-- Practice: Products Above Average Price

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The subquery calculates the average Price of all products.
-- The outer query returns products whose Price is greater
-- than that average.

SELECT
    ProductName,
    CategoryID,
    Price
FROM Products
WHERE Price > (
    SELECT AVG(Price)
    FROM Products
);

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- WHERE
-- AVG()
-- Scalar subquery
-- Comparison operator (>)

-- =====================================================
-- Result
-- =====================================================
--
-- 25 records
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The inner query returns one value: the average Price
-- of all products.
--
-- The outer query compares each product's Price with that
-- average and returns only products priced above average.
--
-- This is called a scalar subquery because the inner query
-- returns one single value.
