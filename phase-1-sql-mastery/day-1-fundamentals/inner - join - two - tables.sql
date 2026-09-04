-- Day 1: INNER JOIN with two tables
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Finding customers with their order dates

-- This query returns customers who have matching orders.
-- It shows the customer name, order ID, and order date.

SELECT
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate
FROM Customers
INNER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
LIMIT 10;

-- Topics Used:
-- SELECT, INNER JOIN, LIMIT

-- Result:
-- 10 records

-- Conclusion:
-- INNER JOIN returns only records with matching CustomerID values
-- in both the Customers and Orders tables.
-- The result shows which customer placed each order and the date
-- on which the order was placed.
