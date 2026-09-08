-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: COUNT()
-- Practice: Total Product Count

-- =====================================================
-- Query Logic
-- =====================================================
--
-- COUNT(*) counts all rows in the Products table.
-- The result is given the alias ProductCount.
--
-- Because there is no GROUP BY clause, the query returns
-- one total count for the entire Products table.

SELECT
    COUNT(*) AS ProductCount
FROM Products;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- COUNT()
-- Aggregate function
-- Column alias

-- =====================================================
-- Result
-- =====================================================
--
-- 1 record
-- ProductCount: 77
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query counted all products in the Products table.
--
-- The result shows that the Products table contains
-- 77 products.
--
-- COUNT(*) counts every row in the table, including rows
-- that may contain NULL values in individual columns.
