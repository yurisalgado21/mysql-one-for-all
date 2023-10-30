SELECT COUNT(u.user_name) AS musicas_no_historico
FROM SpotifyClone.users AS u
INNER JOIN
	SpotifyClone.history AS h
ON u.user_id = h.user_id
WHERE u.user_id = 1;