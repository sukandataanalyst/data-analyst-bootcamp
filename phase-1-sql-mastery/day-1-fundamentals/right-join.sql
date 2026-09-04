-- Day 1: RIGHT JOIN
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Finding all orders and their customers

-- This query keeps every record from the Orders table
-- and matches customer information when a matching CustomerID exists.

SELECT
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate
FROM Customers
RIGHT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
ORDER BY Orders.OrderID;

-- Topics Used:
-- SELECT, RIGHT JOIN, ORDER BY

-- Result:
-- 830 records
-- NULL CustomerName values: None

-- Conclusion:
-- RIGHT JOIN preserves every record from the Orders table.
-- The result contains all 830 orders in the dataset.
--
-- No NULL values were found in CustomerName, which means every order
-- has a matching customer record.
--
-- Comparison with the LEFT JOIN:
-- The LEFT JOIN returned 832 rows because 2 customers had no orders.
-- The RIGHT JOIN returned 830 rows because it focuses on the orders,
-- and every order had a valid customer.
