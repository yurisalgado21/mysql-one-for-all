SELECT art.artist_name AS artista, al.album_name AS album
FROM SpotifyClone.artists AS art
INNER JOIN
	SpotifyClone.albums AS al
ON art.artist_id = al.artist_id
WHERE art.artist_id = 3
ORDER BY al.album_name ASC;