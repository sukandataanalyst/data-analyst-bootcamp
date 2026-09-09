-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Multiple-column GROUP BY with HAVING
-- Practice: Category and Supplier Combinations with More Than 1 Product

-- =====================================================
-- Query Logic
-- =====================================================
--
-- GROUP BY CategoryID and SupplierID creates one group
-- for each unique category and supplier combination.
-- COUNT(*) counts the products in each combination.
-- HAVING filters the grouped results after aggregation.
--
-- The query keeps only category and supplier combinations
-- containing more than 1 product.
-- The result is given the alias ProductCount.
--
-- ORDER BY CategoryID and SupplierID sorts the grouped
-- results by category first and supplier second.

SELECT
    CategoryID,
    SupplierID,
    COUNT(*) AS ProductCount
FROM Products
GROUP BY
    CategoryID,
    SupplierID
HAVING COUNT(*) > 1
ORDER BY
    CategoryID,
    SupplierID;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- GROUP BY
-- Multiple-column GROUP BY
-- HAVING
-- COUNT()
-- Aggregate function
-- Aggregate filtering
-- Column alias
-- Multiple-column ORDER BY

-- =====================================================
-- Result
-- =====================================================
--
-- 19 records
-- ProductCount: Category and supplier combinations
-- containing more than 1 product
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query counted products for each unique combination
-- of CategoryID and SupplierID.
--
-- The result returned 19 records after filtering for
-- combinations containing more than 1 product.
--
-- HAVING COUNT(*) > 1 keeps only grouped results with
-- more than one product.
