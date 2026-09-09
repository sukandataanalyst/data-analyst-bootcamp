-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: SUM() with JOIN + HAVING
-- Practice: Categories with Total Product Price Greater Than 200

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query joins the Categories table with the Products
-- table using CategoryID.
--
-- SUM(p.Price) calculates the total product price for
-- each category.
--
-- GROUP BY creates one result group for each category.
--
-- HAVING filters the grouped results and keeps only
-- categories with a total product price greater than 200.
--
-- The results are sorted by TotalPrice in descending order.

SELECT
    c.CategoryID,
    c.CategoryName,
    SUM(p.Price) AS TotalPrice
FROM Categories AS c
JOIN Products AS p
    ON c.CategoryID = p.CategoryID
GROUP BY
    c.CategoryID,
    c.CategoryName
HAVING SUM(p.Price) > 200
ORDER BY TotalPrice DESC;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- INNER JOIN
-- ON
-- SUM()
-- GROUP BY
-- HAVING
-- Aggregate function
-- Aggregate filtering
-- Column alias
-- Table aliases
-- Descending sorting

-- =====================================================
-- Result
-- =====================================================
--
-- 6 records
-- TotalPrice: Total product price for each category
-- greater than 200
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query joined the Categories table with the Products
-- table and calculated the total product price for each
-- category.
--
-- The HAVING clause filtered the grouped results and kept
-- only categories with a total product price greater than
-- 200.
--
-- The result returned 6 categories.
--
-- SUM(p.Price) adds the product prices for each category,
-- while HAVING filters the calculated totals.
