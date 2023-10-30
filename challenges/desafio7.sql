SELECT 
	art.artist_name AS artista, 
	al.album_name AS album,
    COUNT(f.user_id) AS pessoas_seguidoras
FROM SpotifyClone.artists AS art
INNER JOIN
	SpotifyClone.albums AS al
ON art.artist_id = al.artist_id
INNER JOIN
	SpotifyClone.following AS f
ON al.artist_id = f.artist_id
GROUP BY art.artist_name, al.album_name
ORDER BY COUNT(f.user_id) DESC, art.artist_name, al.album_name ASC;