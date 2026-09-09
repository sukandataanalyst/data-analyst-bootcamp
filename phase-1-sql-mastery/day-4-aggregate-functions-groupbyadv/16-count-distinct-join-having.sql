-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: COUNT(DISTINCT) with JOIN + HAVING
-- Practice: Suppliers Providing Products in at Least 2 Categories

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query joins the Suppliers table with the Products
-- table using SupplierID.
--
-- COUNT(DISTINCT p.CategoryID) counts the unique categories
-- associated with each supplier.
--
-- GROUP BY creates one result group for each supplier.
--
-- HAVING filters the grouped results and keeps only
-- suppliers providing products in at least 2 categories.
--
-- At least 2 means greater than or equal to 2.
--
-- The results are sorted by CategoryCount in descending
-- order and SupplierID in ascending order.

SELECT
    s.SupplierID,
    s.SupplierName,
    COUNT(DISTINCT p.CategoryID) AS CategoryCount
FROM Suppliers AS s
JOIN Products AS p
    ON s.SupplierID = p.SupplierID
GROUP BY
    s.SupplierID,
    s.SupplierName
HAVING COUNT(DISTINCT p.CategoryID) >= 2
ORDER BY
    CategoryCount DESC,
    s.SupplierID ASC;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- INNER JOIN
-- ON
-- COUNT(DISTINCT)
-- GROUP BY
-- HAVING
-- >=
-- Aggregate function
-- Distinct values
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
-- 10 records
-- CategoryCount: Unique categories provided by each
-- supplier, with at least 2 categories
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query joined the Suppliers table with the Products
-- table and counted the unique categories associated with
-- each supplier.
--
-- The HAVING clause kept only suppliers providing products
-- in at least 2 different categories.
--
-- The result returned 10 suppliers.
--
-- COUNT(DISTINCT p.CategoryID) counts each category only
-- once for a supplier, even when that supplier provides
-- multiple products in the same category.
