-- Day 1: LEFT JOIN
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Finding customers and their orders

-- This query keeps every customer from the Customers table
-- and matches their orders from the Orders table.

SELECT
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate
FROM Customers
LEFT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- Topics Used:
-- SELECT, LEFT JOIN, ORDER BY

-- Result:
-- 832 records
-- 2 customers have no matching orders.
-- These rows contain NULL values in Orders.OrderID and Orders.OrderDate.

-- Conclusion:
-- LEFT JOIN preserves every record from the Customers table.
-- The result contains 830 customer-order matches and 2 customers
-- who have not placed any orders.
--
-- The NULL order values identify customers without matching records
-- in the Orders table.
