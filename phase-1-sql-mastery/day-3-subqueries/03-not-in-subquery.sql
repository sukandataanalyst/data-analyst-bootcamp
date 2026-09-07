-- Day 3: SQL Subqueries
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: NOT IN Subquery
-- Practice: Products Not in the Beverages Category

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The subquery finds the CategoryID for Beverages.
-- The outer query excludes products whose CategoryID
-- matches that result.

SELECT
    ProductName,
    CategoryID,
    Price
FROM Products
WHERE CategoryID NOT IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
);

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- WHERE
-- NOT IN
-- Subquery
-- Exclusion filtering

-- =====================================================
-- Result
-- =====================================================
--
-- 65 records
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The inner query finds the CategoryID belonging to
-- the Beverages category.
--
-- The outer query excludes products with that CategoryID.
--
-- NOT IN is useful when the query should exclude records
-- matching a value returned by the subquery.
