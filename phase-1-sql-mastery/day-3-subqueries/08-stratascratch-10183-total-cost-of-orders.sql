-- Day 3: SQL Practice
-- Platform: StrataScratch
-- Problem ID: 10183
-- Database: StrataScratch practice database
-- Topic: JOIN, SUM(), GROUP BY, and ORDER BY
-- Practice: Total Cost Of Orders

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The customers and orders tables are joined using
-- the customer ID and customer reference ID.
--
-- SUM() calculates the total cost of orders for each
-- customer.
--
-- GROUP BY creates one result row for each customer.
--
-- ORDER BY sorts the customers by first name.

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
-- SELECT
-- FROM
-- JOIN
-- ON
-- SUM()
-- GROUP BY
-- ORDER BY
-- Column alias
-- Aggregate function

-- =====================================================
-- Result
-- =====================================================
--
-- 7 records

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The JOIN connects each customer with their orders.
--
-- SUM() calculates the combined order cost for each
-- customer.
--
-- GROUP BY c.id and c.first_name ensures that each
-- customer appears as one result row.
--
-- The results are displayed alphabetically by first name.



