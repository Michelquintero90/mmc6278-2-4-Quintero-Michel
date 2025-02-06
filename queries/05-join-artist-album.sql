-- Join artists on albums, pulling artists.name as artist_name
-- albums.name as album_name and albums.release_year
-- sort by artist name and album name ascending
SELECT artists.name AS artist_name, albums.name AS album_name, albums.release_year
FROM albums
JOIN artists ON albums.artist_id = artists.id
ORDER BY artist_name ASC, album_name ASC;
