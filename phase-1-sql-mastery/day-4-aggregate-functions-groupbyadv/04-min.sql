-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: MIN()
-- Practice: Lowest Product Price

-- =====================================================
-- Query Logic
-- =====================================================
--
-- MIN(Price) finds the lowest value in the Price column.
-- The result is given the alias LowestPrice.
--
-- Because there is no GROUP BY clause, the query returns
-- one minimum value for the entire Products table.

SELECT
    MIN(Price) AS LowestPrice
FROM Products;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- MIN()
-- Aggregate function
-- Column alias

-- =====================================================
-- Result
-- =====================================================
--
-- 1 record
-- LowestPrice: 2.50
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query found the lowest price of all products
-- in the Products table.
--
-- The result shows that the lowest product price is 2.50.
--
-- MIN(Price) returns the smallest numeric value in the
-- Price column.
-- NULL values are ignored by the MIN() function.
