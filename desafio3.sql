
SELECT U.usuario_nome AS usuario, 
COUNT(DISTINCT(H.historico_info)) qtde_musicas_ouvidas, 
ROUND(SUM(M.duracao) / 60, 2) total_minutos FROM usuario U
INNER JOIN historico H
ON H.usuario_id = U.usuario_id
INNER JOIN musicas M
ON M.musicas_id = H.musicas_id
GROUP BY U.usuario_nome;
