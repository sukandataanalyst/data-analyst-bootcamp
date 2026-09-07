-- Day 2: HackerRank - Select By ID
-- Problem: Find the city with ID 1661
-- Platform: HackerRank
-- SQL Dialect: MySQL
-- Result Count: 1
-- Status: SOLVED ON 1ST ATTEMPT

-- Return all columns for the city whose ID is 1661.

SELECT *
FROM CITY
WHERE ID = 1661;

-- Query Logic:
-- SELECT * returns all columns from the CITY table.
-- WHERE ID = 1661 filters the results to the city
-- with the specified ID.
-- Because ID identifies a specific city, the query returns
-- one record.

-- Topics Used:
-- SELECT
-- WHERE
-- Equality comparison operator (=)

-- Self-Note:
-- Use an equality condition when filtering for one specific
-- record identified by a known ID.
