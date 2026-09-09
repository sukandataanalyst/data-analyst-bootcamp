-- Day 4: Aggregate Functions + GROUP BY Advanced
-- Platform: StrataScratch
-- Database: Spotify worldwide daily song ranking database
-- Topic: COUNT() with GROUP BY and ORDER BY
-- Practice: Artist Appearance Count

-- Query Logic:
-- Group the ranking data by artist.
-- Count the number of ranking rows for each artist.
-- Sort the results from the highest appearance count to the lowest.

SELECT
    artist,
    COUNT(*) AS appearance_count
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY appearance_count DESC;

-- Topics Used:
-- COUNT()
-- GROUP BY
-- ORDER BY
-- Aggregate functions
-- Column aliases

-- Result:
-- The query returned one row for each artist.
-- The results were sorted by appearance_count in descending order.
-- Top results included:
-- Kendrick Lamar: 9
-- Ed Sheeran: 5
-- Matoma: 2
-- Petit Biscuit: 2
-- Manuel Turizo: 2

-- Conclusion:
-- COUNT(*) counts every ranking row for each artist.
-- GROUP BY artist creates a separate group for every artist.
-- ORDER BY appearance_count DESC displays the artists with the most appearances first.
