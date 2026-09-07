-- Day 2: HackerRank - Revising the Select Query I
-- Problem: Find American cities with populations greater than 100,000
-- Platform: HackerRank
-- SQL Dialect: MySQL
-- Result Count: 5
-- Status: PASSED ON 2ND ATTEMPT

-- Return all columns for cities in the United States
-- with populations greater than 100,000.

SELECT *
FROM CITY
WHERE CountryCode = 'USA'
  AND Population > 100000;

-- Query Logic:
-- CountryCode = 'USA' filters cities located in America.
-- Population > 100000 filters cities with populations
-- greater than 100,000.
-- The AND operator requires both conditions to be true.
-- SELECT * returns all columns from the CITY table.

-- Topics Used:
-- SELECT
-- WHERE
-- Equality operator (=)
-- Greater-than comparison operator (>)
-- AND

-- Self-Note:
-- Check the column names carefully before writing the query.
-- My first attempt required correction because I initially
-- forgot to use the CountryCode column.
-- The corrected query passed on the second attempt.
