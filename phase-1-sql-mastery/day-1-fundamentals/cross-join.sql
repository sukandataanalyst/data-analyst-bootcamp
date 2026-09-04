-- Day 1: CROSS JOIN
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Creating a Cartesian product

-- This query creates every possible combination of customers and orders.
-- It does not use a matching condition.

SELECT
    c.CustomerName,
    o.OrderID
FROM Customers c
CROSS JOIN Orders o;

-- Topics Used:
-- SELECT, CROSS JOIN

-- Result:
-- 75,530 records
--
-- Calculation:
-- 91 customers × 830 orders = 75,530 combinations

-- Conclusion:
-- CROSS JOIN produces a Cartesian product by pairing every customer
-- with every order. Most of these combinations are not meaningful
-- because the customers did not necessarily place those orders.
--
-- Comparison:
-- CROSS JOIN creates all possible combinations first.
-- INNER JOIN returns only rows that satisfy a matching condition.
-- Therefore, INNER JOIN is more appropriate when the goal is to
-- connect customers with their actual orders.
