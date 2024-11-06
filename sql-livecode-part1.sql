-- SQL Livecode

-- 1. List all artists (only names)
--SELECT name
--FROM artists;

-- 2. Count the number of tracks that are shorter than 2 minutes
--SELECT COUNT(*) AS tracks_amount
--FROM tracks
--WHERE milliseconds < 2 * 60 * 1000;

-- 3. List the first ten albums of the Jukebox DB, sorted alphabetically
SELECT *
FROM albums
ORDER BY title
LIMIT 10;
