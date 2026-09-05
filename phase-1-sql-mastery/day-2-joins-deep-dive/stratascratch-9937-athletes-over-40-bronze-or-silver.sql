-- Day 2: StrataScratch Problem 9937
-- Problem: Find athletes over 40 who won Bronze or Silver medals
-- Platform: StrataScratch
-- SQL Dialect: MySQL
-- Result Count: 6
-- Status: SOLVED ON 2ND ATTEMPT

-- Return the names of athletes who were older than 40
-- when they won either a Bronze or Silver medal.

SELECT name
FROM olympics_athletes_events
WHERE age > 40
  AND (
      medal = 'Bronze'
      OR medal = 'Silver'
  )
ORDER BY age;

-- Query Logic:
-- age > 40 filters athletes who were older than 40.
-- The OR condition selects either Bronze or Silver medals.
-- The AND operator requires both the age and medal conditions
-- to be true.
-- SELECT name returns only the requested athlete names.
-- ORDER BY age sorts the results by age in ascending order.

-- Topics Used:
-- SELECT
-- WHERE
-- Comparison operator: >
-- AND
-- OR
-- ORDER BY

-- Self-Note:
-- Read the requested output carefully.
-- The question asked for athlete names, not all columns.
-- My first attempt returned more information than required.
-- The second attempt corrected the SELECT statement to:
-- SELECT name
