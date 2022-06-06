
SELECT M.musicas_nome nome, COUNT(H.musicas_id) reproducoes FROM musicas M
INNER JOIN historico H
ON H.musicas_id = M.musicas_id
INNER JOIN usuario U
ON U.usuario_id = H.usuario_id
WHERE U.plano_id IN(1, 2)
GROUP BY nome
ORDER BY nome;

