-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: MAX()
-- Practice: Highest Product Price

-- =====================================================
-- Query Logic
-- =====================================================
--
-- MAX(Price) finds the highest value in the Price column.
-- The result is given the alias HighestPrice.
--
-- Because there is no GROUP BY clause, the query returns
-- one maximum value for the entire Products table.

SELECT
    MAX(Price) AS HighestPrice
FROM Products;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- MAX()
-- Aggregate function
-- Column alias

-- =====================================================
-- Result
-- =====================================================
--
-- 1 record
-- HighestPrice: 263.50
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query found the highest price of all products
-- in the Products table.
--
-- The result shows that the highest product price is
-- 263.50.
--
-- MAX(Price) returns the largest numeric value in the
-- Price column.
-- NULL values are ignored by the MAX() function.
