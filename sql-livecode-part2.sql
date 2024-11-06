-- SQLite
-- Let’s take a look at the Jukebox database again and write two queries to:

-- List the track and album information for the tracks which names are containing a given keyword (case insensitive)
-- SELECT
--   tracks.name AS track_name,
--   albums.title AS album_title
-- FROM tracks
-- JOIN albums ON albums.id = tracks.album_id
-- WHERE tracks.name LIKE '%love%';

















-- List the top 5 Rock artists with the most tracks

---------------
-- list tracks
---------------
-- SELECT *
-- FROM tracks;

---------------
-- Rock tracks
---------------
-- SELECT
--   tracks.name AS track_name,
--   genres.name AS genre_name
-- FROM tracks
-- JOIN genres ON genres.id = tracks.genre_id
-- WHERE genres.name = 'Rock';

---------------
-- albums with Rock tracks
---------------
-- SELECT
--   tracks.name AS track,
--   albums.title AS album
-- FROM tracks
-- JOIN genres ON genres.id = tracks.genre_id
-- JOIN albums ON albums.id = tracks.album_id
-- WHERE genres.name = 'Rock';

---------------
-- albums and artists with Rock tracks
---------------
-- SELECT
--   tracks.name AS track,
--   artists.name AS artist
-- FROM tracks
-- JOIN genres ON genres.id = tracks.genre_id
-- JOIN albums ON albums.id = tracks.album_id
-- JOIN artists ON artists.id = albums.artist_id
-- WHERE genres.name = 'Rock';

---------------
-- artists with Rock tracks
---------------
-- SELECT
--   COUNT(*) as rock_tracks_amount,
--   artists.name AS artist
-- FROM tracks
-- JOIN genres ON genres.id = tracks.genre_id
-- JOIN albums ON albums.id = tracks.album_id
-- JOIN artists ON artists.id = albums.artist_id
-- WHERE genres.name = 'Rock'
-- GROUP BY artist;

---------------
-- artists with Rock tracks sorted
---------------
-- SELECT
--   COUNT(*) as rock_tracks_amount,
--   artists.name AS artist
-- FROM tracks
-- JOIN genres ON genres.id = tracks.genre_id
-- JOIN albums ON albums.id = tracks.album_id
-- JOIN artists ON artists.id = albums.artist_id
-- WHERE genres.name = 'Rock'
-- GROUP BY artist
-- ORDER BY rock_tracks_amount DESC;

---------------
-- Top 5 artists with Rock tracks
---------------
SELECT
  COUNT(*) as rock_tracks_amount,
  artists.name AS artist
FROM tracks
JOIN genres ON genres.id = tracks.genre_id
JOIN albums ON albums.id = tracks.album_id
JOIN artists ON artists.id = albums.artist_id
WHERE genres.name = 'Rock'
GROUP BY artist
ORDER BY rock_tracks_amount DESC
