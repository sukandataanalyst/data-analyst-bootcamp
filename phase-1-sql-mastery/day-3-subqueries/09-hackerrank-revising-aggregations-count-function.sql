-- Day 3: SQL Practice
-- Platform: HackerRank
-- Challenge: Revising Aggregations - The Count Function
-- Database: HackerRank SQL database
-- Topic: COUNT() and WHERE filtering

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query counts cities whose population is greater
-- than 100,000.

SELECT
    COUNT(*) 
FROM CITY
WHERE POPULATION > 100000;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- COUNT()
-- AS
-- FROM
-- WHERE
-- Comparison operator (>)

-- =====================================================
-- Result
-- =====================================================
--
-- 6

-- =====================================================
-- Conclusion
-- =====================================================
--
-- COUNT(*) counts the rows that satisfy the WHERE
-- condition.
--
-- The result is the number of cities with a population
-- greater than 100,000.
