-- Day 3: SQL Subqueries
-- Platform: StrataScratch
-- Problem ID: 10183
-- Database: StrataScratch practice database
-- Topic: JOIN, SUM(), WHERE, and GROUP BY
-- Practice: Total Cost Of Orders

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query joins customers with their orders.
-- It filters orders placed during 2019.
-- SUM() calculates each customer's total order cost.
-- GROUP BY creates one result for each customer.

SELECT
    c.id,
    c.first_name,
    SUM(o.total_order_cost) AS total_cost
FROM customers AS c
JOIN orders AS o
    ON c.id = o.cust_id
GROUP BY
    c.id,
    c.first_name
ORDER BY c.first_name;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- JOIN, SUM(), GROUP BY, and ORDER BY
--
-- =====================================================
-- Result
-- =====================================================
--
-- 7 records
--
-- =====================================================
-- Conclusion
-- =====================================================
--
-- The customers and orders tables are connected using:
--
-- c.id = o.cust_id
--
-- The WHERE clause keeps only orders placed in 2019.
--
-- SUM() calculates the total order cost for each customer.
--
-- GROUP BY combines each customer's 2019 orders into one
-- result row.
--
-- The results are sorted from the highest total cost
-- to the lowest total cost.
