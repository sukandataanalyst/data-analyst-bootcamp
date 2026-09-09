-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: HAVING with GROUP BY
-- Practice: Categories with More Than 5 Products

-- =====================================================
-- Query Logic
-- =====================================================
--
-- GROUP BY CategoryID creates one group for each category.
-- COUNT(*) counts the products in each category.
-- HAVING filters the grouped results after aggregation.
--
-- The query keeps only categories containing more than
-- 5 products.
-- The result is given the alias ProductCount.
--
-- ORDER BY CategoryID sorts the grouped results by
-- category ID in ascending order.

SELECT
    CategoryID,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 5
ORDER BY CategoryID;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- GROUP BY
-- HAVING
-- COUNT()
-- Aggregate function
-- Aggregate filtering
-- Column alias
-- ORDER BY

-- =====================================================
-- Result
-- =====================================================
--
-- 7 records
-- ProductCount: Categories containing more than 5 products
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query counted the products in each category and
-- returned only categories containing more than 5 products.
--
-- The result returned 7 records.
--
-- HAVING filters grouped results after aggregation.
-- Aggregate conditions such as COUNT(*) > 5 belong in
-- HAVING rather than WHERE.
