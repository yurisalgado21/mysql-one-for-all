SELECT s.music_name AS cancao, COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN
	SpotifyClone.history AS h
ON s.music_id = h.music_id
GROUP BY music_name
ORDER BY COUNT(h.music_id) DESC, music_name
LIMIT 2;