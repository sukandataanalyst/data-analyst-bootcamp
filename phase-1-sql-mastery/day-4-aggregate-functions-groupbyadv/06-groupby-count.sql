-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: GROUP BY + COUNT()
-- Practice: Product Count by Category

-- =====================================================
-- Query Logic
-- =====================================================
--
-- GROUP BY CategoryID creates one group for each category.
-- COUNT(*) counts the products in each category.
-- The result is given the alias ProductCount.
--
-- ORDER BY CategoryID sorts the grouped results by
-- category ID in ascending order.

SELECT
    CategoryID,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY CategoryID
ORDER BY CategoryID;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- GROUP BY
-- COUNT()
-- Aggregate function
-- Column alias
-- ORDER BY

-- =====================================================
-- Result
-- =====================================================
--
-- 8 records
-- ProductCount: Count of products in each category
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query counted the number of products in each
-- category.
--
-- The result returned 8 records, representing the 8
-- category groups in the Products table.
--
-- GROUP BY creates separate groups based on matching
-- CategoryID values.
