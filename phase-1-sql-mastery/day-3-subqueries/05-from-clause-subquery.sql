-- Day 3: SQL Subqueries
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: FROM-Clause Subquery
-- Practice: Categories with Average Price Above 30

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The inner query calculates the average Price for
-- each category.
--
-- The outer query returns categories whose average Price
-- is greater than 30.

SELECT
    CategoryID,
    AveragePrice
FROM (
    SELECT
        CategoryID,
        AVG(Price) AS AveragePrice
    FROM Products
    GROUP BY CategoryID
) AS category_prices
WHERE AveragePrice > 30
ORDER BY AveragePrice DESC;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- WHERE
-- GROUP BY
-- ORDER BY
-- FROM-clause subquery
-- Derived table
-- AVG()
-- Column alias
-- Table alias
-- Comparison operator (>)

-- =====================================================
-- Result
-- =====================================================
--
-- 3 records
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The inner query groups products by CategoryID and
-- calculates the average Price for each category.
--
-- The inner query is used in the FROM clause as a
-- temporary result set, also called a derived table.
--
-- The derived table is given the alias category_prices.
--
-- The outer query keeps only categories whose average
-- Price is greater than 30 and sorts the results from
-- highest to lowest average Price.
--
-- In MySQL, a FROM-clause subquery must have an alias.
