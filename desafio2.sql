
SELECT 
COUNT(DISTINCT(M.musicas_id)) cancoes, 
COUNT(DISTINCT(AR.artista_id)) artistas, 
COUNT(DISTINCT(AL.album_id)) albuns FROM musicas M
INNER JOIN album AL
ON AL.album_id = M.album_id
INNER JOIN artista AR
ON AR.artista_id = AL.artista_id;

