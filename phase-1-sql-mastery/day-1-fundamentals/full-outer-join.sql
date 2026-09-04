-- Day 1: Simulated FULL OUTER JOIN
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Combining all customers and all orders

-- MySQL does not support FULL OUTER JOIN directly.
-- This query simulates it by combining a LEFT JOIN
-- and a RIGHT JOIN with UNION.

-- First part:
-- Keeps all customers and matches their orders when available.

SELECT
    c.CustomerName,
    o.OrderID
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID

UNION

-- Second part:
-- Keeps all orders and matches customer names when available.

SELECT
    c.CustomerName,
    o.OrderID
FROM Customers c
RIGHT JOIN Orders o
    ON c.CustomerID = o.CustomerID;

-- Topics Used:
-- SELECT, LEFT JOIN, RIGHT JOIN, UNION

-- Result:
-- 832 records

-- Conclusion:
-- The LEFT JOIN includes all customers, including the 2 customers
-- who have no matching orders. Their OrderID appears as NULL.
--
-- The RIGHT JOIN includes all orders and their customer names.
-- In this dataset, every order has a matching customer.
--
-- UNION combines both results and removes duplicate rows,
-- creating the effect of a FULL OUTER JOIN.
