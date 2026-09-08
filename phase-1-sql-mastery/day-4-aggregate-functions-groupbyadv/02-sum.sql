-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: SUM()
-- Practice: Total Product Price

-- =====================================================
-- Query Logic
-- =====================================================
--
-- SUM(Price) adds together all values in the Price column.
-- The result is given the alias TotalPrice.
--
-- Because there is no GROUP BY clause, the query returns
-- one total sum for the entire Products table.

SELECT
    SUM(Price) AS TotalPrice
FROM Products;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- SUM()
-- Aggregate function
-- Column alias

-- =====================================================
-- Result
-- =====================================================
--
-- 1 record
-- TotalPrice: 2222.71
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query calculated the total price of all products
-- in the Products table.
--
-- The result shows that the combined price of all products
-- is 2222.71.
--
-- SUM(Price) adds numeric values in the Price column.
-- NULL values are ignored by the SUM() function.
