-- Day 3: SQL Practice
-- Platform: HackerRank
-- Challenge: Higher Than 75 Marks
-- Database: HackerRank SQL database
-- Topic: WHERE filtering and ORDER BY

-- =====================================================
-- Query Logic
-- =====================================================
--
-- The query selects students whose Marks are greater
-- than 75.
--
-- The results are sorted by the last three characters
-- of each student's Name.
--
-- If two names have the same last three characters,
-- their ID is used as the secondary sorting rule.

SELECT
    Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;

-- =====================================================
-- Topics Used
-- =====================================================
--
-- SELECT
-- FROM
-- WHERE
-- RIGHT()
-- ORDER BY
-- Comparison operator (>)

-- =====================================================
-- Result
-- =====================================================
--
-- Solved successfully

-- =====================================================
-- Conclusion
-- =====================================================
--
-- The WHERE clause filters students with Marks greater
-- than 75.
--
-- RIGHT(Name, 3) returns the final three characters of
-- each student's name for sorting.
--
-- ID resolves ties when students have the same final
-- three characters.
