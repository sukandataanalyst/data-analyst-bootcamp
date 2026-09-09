-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: At Least 4 Products
-- Practice: Suppliers Providing at Least 4 Products

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query joins the Suppliers table with the Products
-- table using SupplierID.
--
-- COUNT(p.ProductID) counts the products associated with
-- each supplier.
--
-- GROUP BY creates one result group for each supplier.
--
-- HAVING filters the grouped results and keeps only
-- suppliers providing at least 4 products.
--
-- At least 4 means greater than or equal to 4, represented
-- by the >= operator.
--
-- The results are sorted by ProductCount in descending
-- order and SupplierID in ascending order.

SELECT
    s.SupplierID,
    s.SupplierName,
    COUNT(p.ProductID) AS ProductCount
FROM Suppliers AS s
JOIN Products AS p
    ON s.SupplierID = p.SupplierID
GROUP BY
    s.SupplierID,
    s.SupplierName
HAVING COUNT(p.ProductID) >= 4
ORDER BY
    ProductCount DESC,
    s.SupplierID ASC;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- INNER JOIN
-- ON
-- COUNT()
-- GROUP BY
-- HAVING
-- >=
-- Aggregate function
-- Aggregate filtering
-- Column alias
-- Table aliases
-- Multiple-column ORDER BY
-- Descending sorting
-- Ascending sorting

-- =====================================================
-- Result
-- =====================================================
--
-- 4 records
-- ProductCount: Suppliers providing at least 4 products
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query joined the Suppliers table with the Products
-- table and counted the products provided by each supplier.
--
-- The HAVING clause filtered the grouped results and kept
-- only suppliers providing at least 4 products.
--
-- The result returned 4 suppliers.
--
-- At least 4 means greater than or equal to 4, so the
-- correct condition is COUNT(p.ProductID) >= 4.
