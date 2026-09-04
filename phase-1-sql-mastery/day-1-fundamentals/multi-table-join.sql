-- Day 1: Multi-table JOIN
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Finding customers, orders, and ordered products

-- This query connects four related tables:
-- Customers → Orders → OrderDetails → Products
--
-- It shows the customer name, order ID, order date,
-- and product name for each matching order item.

SELECT
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate,
    Products.ProductName
FROM Customers
JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails
    ON OrderDetails.OrderID = Orders.OrderID
JOIN Products
    ON OrderDetails.ProductID = Products.ProductID
ORDER BY Customers.CustomerName
LIMIT 10;

-- Topics Used:
-- SELECT, JOIN, ORDER BY, LIMIT

-- Result:
-- 10 records

-- Join logic:
-- Customers → Orders:
-- Identifies which orders belong to each customer.
--
-- Orders → OrderDetails:
-- Identifies which products are included in each order.
--
-- OrderDetails → Products:
-- Retrieves the names of those products.

-- Conclusion:
-- This query combines customer, order, and product information
-- by joining four related tables. Each result row shows the
-- customer name, order ID, order date, and ordered product name.
--
-- Example interpretation:
-- If Alfreds Futterkiste placed order 10835 on 1998-01-15
-- and the product was Raclette Courdavault, the row shows
-- that customer, order, date, and product together.
