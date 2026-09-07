-- Day 3: SQL Subqueries
-- Platform: StrataScratch
-- Problem ID: 9911
-- Database: StrataScratch practice database
-- Topic: GROUP BY and HAVING
-- Practice: Departments With 5 Employees

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query groups workers by department.
-- COUNT(*) counts the workers in each department.
-- HAVING keeps departments with five or more employees.

SELECT
    department
FROM worker
GROUP BY department
HAVING COUNT(*) >= 5;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- GROUP BY
-- HAVING
-- COUNT()
-- Aggregate filtering

-- =====================================================
-- Result
-- =====================================================
--
-- 1 record

-- =====================================================
-- Conclusion
-- =====================================================
--
-- GROUP BY creates one group for each department.
--
-- COUNT(*) counts the workers in every department.
--
-- HAVING filters the grouped results and returns only
-- departments with at least five employees.
