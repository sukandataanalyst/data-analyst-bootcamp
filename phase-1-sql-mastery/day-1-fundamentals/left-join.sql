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
-- NULL values found: None

-- Conclusion:
-- LEFT JOIN preserves every record from the Customers table.
-- Because no NULL order values were found in the complete result,
-- every customer in this dataset has at least one matching order.
--
-- The query returns one row for each matching customer-order
-- combination, showing the customer name, order ID, and order date.
