-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: AVG()
-- Practice: Average Product Price

-- =====================================================
-- Query Logic
-- =====================================================
--
-- AVG(Price) calculates the average value in the Price
-- column.
-- The result is given the alias AveragePrice.
--
-- Because there is no GROUP BY clause, the query returns
-- one average value for the entire Products table.

SELECT
    AVG(Price) AS AveragePrice
FROM Products;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- AVG()
-- Aggregate function
-- Column alias

-- =====================================================
-- Result
-- =====================================================
--
-- 1 record
-- AveragePrice: 28.866364
-- NULL values: None

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The query calculated the average price of all products
-- in the Products table.
--
-- The result shows that the average product price is
-- 28.866364.
--
-- AVG(Price) calculates the mean of the numeric values
-- in the Price column.
-- NULL values are ignored by the AVG() function.
