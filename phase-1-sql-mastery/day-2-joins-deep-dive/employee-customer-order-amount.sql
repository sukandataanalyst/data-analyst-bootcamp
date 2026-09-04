-- Day 2: Multiple JOINs with Order Amount
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Finding which employee sold to which customer
-- and calculating the total amount of each order

-- JOIN chain:
-- Employees → Orders → Customers → OrderDetails → Products
--
-- Products is included because the product price is needed
-- to calculate the total order amount.

SELECT
    e.FirstName,
    e.LastName,
    c.CustomerName,
    o.OrderID,
    SUM(od.Quantity * p.Price) AS OrderAmount
FROM Employees e
INNER JOIN Orders o
    ON e.EmployeeID = o.EmployeeID
INNER JOIN Customers c
    ON o.CustomerID = c.CustomerID
INNER JOIN OrderDetails od
    ON o.OrderID = od.OrderID
INNER JOIN Products p
    ON od.ProductID = p.ProductID
GROUP BY
    o.OrderID,
    e.EmployeeID,
    c.CustomerID
LIMIT 20;

-- Topics Used:
-- SELECT, SUM, INNER JOIN, GROUP BY, LIMIT

-- Result:
-- 20 records

-- Conclusion:
-- This query connects employees, orders, customers,
-- order details, and products.
--
-- It shows which employee handled each order, which customer
-- placed the order, and the total amount of that order.
--
-- The order amount is calculated by multiplying each product's
-- quantity by its price and adding the values for the complete order.
