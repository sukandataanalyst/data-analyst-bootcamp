-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: GROUP BY with Categories JOIN
-- Practice: Product Count by Category Name

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query joins the Products table with the Categories
-- table.
--
-- The JOIN connects both tables using their shared
-- CategoryID column.
--
-- COUNT(*) counts the products belonging to each category.
--
-- The results are grouped by both CategoryID and
-- CategoryName so that each category appears as one
-- result row.
--
-- The results are sorted by CategoryID in ascending order.

SELECT
    c.CategoryID,
    c.CategoryName,
    COUNT(*) AS ProductCount
FROM Products AS p
JOIN Categories AS c
    ON p.CategoryID = c.CategoryID
GROUP BY
    c.CategoryID,
    c.CategoryName
ORDER BY c.CategoryID;

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
-- 8 records
-- ProductCount: Count of products in each category
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query joined the Products table with the
-- Categories table and counted the products belonging
-- to each category.
--
-- The result returned 8 category records with their
-- category names and product counts.
--
-- The join condition p.CategoryID = c.CategoryID connects
-- each product to its matching category.
