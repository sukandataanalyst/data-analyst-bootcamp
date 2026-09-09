-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: GROUP BY with Suppliers JOIN
-- Practice: Product Count by Supplier

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query joins the Suppliers table with the Products
-- table.
--
-- The JOIN connects both tables using SupplierID.
--
-- COUNT(p.ProductID) counts the products associated with
-- each supplier.
--
-- The results are grouped by SupplierID and SupplierName
-- so that each supplier appears as one result row.
--
-- The results are sorted by SupplierID in ascending order.

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
ORDER BY s.SupplierID;

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
-- ORDER BY
-- Aggregate function
-- Column alias
-- Table alias
-- Joining related tables

-- =====================================================
-- Result
-- =====================================================
--
-- 29 records
-- ProductCount: Count of products provided by each supplier
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query joined the Suppliers table with the Products
-- table and counted the products associated with each
-- supplier.
--
-- The result returned 29 suppliers with their product
-- counts.
--
-- The join condition s.SupplierID = p.SupplierID connects
-- each supplier to its matching products.
