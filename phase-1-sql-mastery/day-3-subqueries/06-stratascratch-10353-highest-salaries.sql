-- Day 3: SQL Subqueries
-- Platform: StrataScratch
-- Problem ID: 10353
-- Database: StrataScratch practice database
-- Topic: Scalar Subquery
-- Practice: Workers With the Highest Salaries

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The subquery finds the highest salary in the Worker table.
-- The outer query finds the title of each worker whose salary
-- matches that highest salary.
--
-- The Worker and Title tables are joined using the worker ID.

SELECT DISTINCT
    t.worker_title AS best_paid_title
FROM worker AS w
JOIN title AS t
    ON w.worker_id = t.worker_ref_id
WHERE w.salary = (
    SELECT MAX(w2.salary)
    FROM worker AS w2
    JOIN title AS t2
        ON w2.worker_id = t2.worker_ref_id
);

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- JOIN
-- ON
-- WHERE
-- MAX()
-- Scalar subquery
-- Table aliases
-- Equality comparison (=)

-- =====================================================
-- Result
-- =====================================================
--
-- 2 records

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The inner query returns the highest salary from the
-- Worker table.
--
-- The outer query finds workers whose salary equals that
-- highest salary and returns their worker titles.
--
-- This is a scalar subquery because the inner query returns
-- one single value.
