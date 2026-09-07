-- Day 3: SQL Subqueries
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: IN Subquery
-- Practice: Products in the Beverages Category

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The subquery finds the CategoryID for Beverages.
-- The outer query returns products whose CategoryID
-- matches that result.

SELECT
    ProductName,
    CategoryID,
    Price
FROM Products
WHERE CategoryID IN (
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
-- IN
-- Subquery
-- Category filtering

-- =====================================================
-- Result
-- =====================================================
--
-- 12 records
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The inner query finds the CategoryID belonging to
-- the Beverages category.
--
-- The outer query returns products whose CategoryID
-- matches the CategoryID returned by the subquery.
--
-- IN is useful when the outer query needs to match
-- one or more values returned by another query.
