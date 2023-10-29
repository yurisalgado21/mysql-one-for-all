SELECT u.user_name AS pessoa_usuaria, COUNT(h.music_id) AS musicas_ouvidas, ROUND(SUM(m.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN
	SpotifyClone.history AS h
ON u.user_id = h.user_id
INNER JOIN
	SpotifyClone.songs AS m
ON m.music_id = h.music_id
GROUP BY u.user_name
ORDER BY u.user_name;