-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Multiple-column GROUP BY
-- Practice: Product Count by Category and Supplier

-- =====================================================
-- Query Logic
-- =====================================================
--
-- GROUP BY CategoryID and SupplierID creates one group
-- for each unique category and supplier combination.
-- COUNT(*) counts the products in each combination.
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
-- COUNT()
-- Aggregate function
-- Column alias
-- Multiple-column ORDER BY

-- =====================================================
-- Result
-- =====================================================
--
-- 49 records
-- ProductCount: Count of products for each unique
-- CategoryID and SupplierID combination
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query counted products for each unique combination
-- of CategoryID and SupplierID.
--
-- The result returned 49 records, representing the unique
-- category and supplier combinations found in the Products
-- table.
--
-- A multiple-column GROUP BY creates groups based on the
-- combined values of all grouped columns.
