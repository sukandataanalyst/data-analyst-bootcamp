-- Day 2: StrataScratch Problem 9805
-- Problem: Find drafts which contain the word "optimism"
-- Platform: StrataScratch
-- SQL Dialect: MySQL
-- Result Count: 1
-- Status: SOLVED ON 1ST ATTEMPT

-- Find all files whose filename starts with "draft"
-- and whose contents include "optimism".

SELECT *
FROM google_file_store
WHERE filename LIKE 'draft%'
  AND contents LIKE '%optimism%';

-- Query Logic:
-- 'draft%' matches filenames that start with "draft".
-- '%optimism%' matches contents containing "optimism" anywhere.
-- The AND operator requires both conditions to be true.
--
-- In MySQL, LIKE case sensitivity depends on the column collation.
-- In this practice environment, the query returned the expected
-- case-insensitive result.

-- Topics Used:
-- SELECT
-- WHERE
-- AND
-- LIKE
-- Wildcard pattern matching

-- Self-Note:
-- Read the question twice before writing the query.
-- Write the basic conditions that come to mind, then check
-- the query once more before running it.
