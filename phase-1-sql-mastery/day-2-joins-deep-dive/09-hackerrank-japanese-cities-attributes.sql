-- Day 2: HackerRank - Japanese Cities' Attributes
-- Problem: Find all Japanese cities
-- Platform: HackerRank
-- SQL Dialect: MySQL
-- Result Count: 5
-- Status: SOLVED ON 1ST ATTEMPT

-- Return all columns for cities located in Japan.
-- Japan's country code is JPN.

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Query Logic:
-- SELECT * returns all columns from the CITY table.
-- WHERE COUNTRYCODE = 'JPN' filters the results to cities
-- whose country code identifies Japan.

-- Topics Used:
-- SELECT
-- WHERE
-- Equality comparison operator (=)

-- Self-Note:
-- Country codes can be used to filter records belonging
-- to a specific country.
