-- Day 2: StrataScratch Problem 9842
-- Problem: Find workers whose first name has six letters
--          and ends with the letter "h"
-- Platform: StrataScratch
-- SQL Dialect: MySQL
-- Result Count: 2
-- Status: SOLVED ON 1ST ATTEMPT

-- Return all information about workers whose first name
-- contains exactly six letters and ends with "h".

SELECT *
FROM worker
WHERE first_name LIKE '_____h';

-- Query Logic:
-- Each underscore (_) represents exactly one character.
-- Five underscores represent the first five letters.
-- The final "h" represents the sixth and last letter.
-- Therefore, '_____h' matches names with exactly six letters
-- that end with "h".

-- Topics Used:
-- SELECT
-- WHERE
-- LIKE
-- Wildcard pattern matching
-- Underscore wildcard (_)

-- Alternative Query 1:
-- This version expresses the character count and final letter
-- as separate conditions.

-- SELECT *
-- FROM worker
-- WHERE LENGTH(first_name) = 6
--   AND first_name LIKE '%h';

-- Alternative Query 2:
-- This version checks the final character with RIGHT().

-- SELECT *
-- FROM worker
-- WHERE LENGTH(first_name) = 6
--   AND RIGHT(first_name, 1) = 'h';

-- Self-Note:
-- The pattern LIKE '_____h' is concise and elegant.
-- Five underscores plus "h" represent exactly six characters
-- ending with the letter "h".
-- Alternative approaches are useful when the pattern becomes
-- more complex or when explicit logic is easier to read.
