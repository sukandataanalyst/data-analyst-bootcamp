-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: AVG() with JOIN + HAVING
-- Practice: Categories with Average Product Price Greater Than 25

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query joins the Categories table with the Products
-- table using CategoryID.
--
-- AVG(p.Price) calculates the average product price for
-- each category.
--
-- GROUP BY creates one result group for each category.
--
-- HAVING filters the grouped results and keeps only
-- categories with an average product price greater than 25.
--
-- The results are sorted by AveragePrice in descending
-- order.

SELECT
    c.CategoryID,
    c.CategoryName,
    AVG(p.Price) AS AveragePrice
FROM Categories AS c
JOIN Products AS p
    ON c.CategoryID = p.CategoryID
GROUP BY
    c.CategoryID,
    c.CategoryName
HAVING AVG(p.Price) > 25
ORDER BY AveragePrice DESC;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- INNER JOIN
-- ON
-- AVG()
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
-- 5 records
-- AveragePrice: Average product price for each category
-- greater than 25
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query joined the Categories table with the Products
-- table and calculated the average product price for each
-- category.
--
-- The HAVING clause filtered the grouped results and kept
-- only categories with an average product price greater
-- than 25.
--
-- The result returned 5 categories.
--
-- AVG(p.Price) calculates the average price for each
-- category, while HAVING filters the calculated averages.
