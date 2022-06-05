
SELECT M.musicas_nome cancao, COUNT(H.musicas_id) reproducoes
FROM musicas M
INNER JOIN historico H
ON M.musicas_id = H.musicas_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
