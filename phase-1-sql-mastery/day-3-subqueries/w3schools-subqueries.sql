-- Day 3: W3Schools SQL Subqueries
-- Database: W3Schools Northwind
-- SQL Dialect: MySQL
-- Focus: Scalar, IN, NOT IN, Correlated, and FROM-clause subqueries


-- =====================================================
-- 1. Scalar Subquery
-- Find products whose Price is greater than the
-- average Price of all products.
-- Result: 25 records
-- =====================================================

SELECT
    ProductName,
    Price
FROM Products
WHERE Price > (
    SELECT AVG(Price)
    FROM Products
);


-- =====================================================
-- 2. IN Subquery
-- Find products belonging to the Beverages category.
-- Result: 12 records
-- =====================================================

SELECT
    ProductName,
    CategoryID
FROM Products
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
);


-- =====================================================
-- 3. NOT IN Subquery
-- Find products that do not belong to the Beverages category.
-- Result: 65 records
-- =====================================================

SELECT
    ProductName,
    CategoryID
FROM Products
WHERE CategoryID NOT IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
);


-- =====================================================
-- 4. Correlated Subquery
-- Find products whose Price is higher than the average
-- Price of products in their own category.
-- Result: 27 records
-- =====================================================

SELECT
    p.ProductName,
    p.CategoryID,
    p.Price
FROM Products AS p
WHERE p.Price > (
    SELECT AVG(p2.Price)
    FROM Products AS p2
    WHERE p2.CategoryID = p.CategoryID
);


-- =====================================================
-- 5. FROM-Clause Subquery
-- Find categories whose average product Price is greater
-- than 30.
-- Result: 3 records
-- =====================================================

SELECT
    CategoryID,
    AveragePrice
FROM (
    SELECT
        CategoryID,
        AVG(Price) AS AveragePrice
    FROM Products
    GROUP BY CategoryID
) AS category_prices
WHERE AveragePrice > 30
ORDER BY AveragePrice DESC;



