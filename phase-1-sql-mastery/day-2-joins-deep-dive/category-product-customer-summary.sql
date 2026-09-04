-- Day 2: Multiple JOINs with Product and Customer Summary
-- Platform: W3Schools SQL Editor
-- Database: Northwind sample database
-- Topic: Finding ordered products by category and customer

-- JOIN chain:
-- Categories → Products → OrderDetails → Orders → Customers
--
-- This query shows which customers ordered each product,
-- how many orders included the product, and the total quantity ordered.

SELECT
    cat.CategoryName,
    p.ProductName,
    c.CustomerName,
    COUNT(od.OrderID) AS NumberOfOrders,
    SUM(od.Quantity) AS TotalQuantity
FROM Categories cat
INNER JOIN Products p
    ON cat.CategoryID = p.CategoryID
INNER JOIN OrderDetails od
    ON p.ProductID = od.ProductID
INNER JOIN Orders o
    ON od.OrderID = o.OrderID
INNER JOIN Customers c
    ON o.CustomerID = c.CustomerID
GROUP BY
    cat.CategoryID,
    p.ProductID,
    c.CustomerID
ORDER BY
    cat.CategoryName,
    p.ProductName
LIMIT 20;

-- Topics Used:
-- SELECT, COUNT, SUM, INNER JOIN, GROUP BY, ORDER BY, LIMIT

-- Result:
-- 20 records
-- NULL values: None

-- Conclusion:
-- This query combines category, product, order, and customer data.
-- It shows which customers ordered each product, how many orders
-- included the product, and the total quantity purchased.
--
-- The results can help identify customer purchasing patterns,
-- frequently ordered products, and product demand by category.
--
-- The GROUP BY uses IDs because they uniquely identify each
-- category, product, and customer.
