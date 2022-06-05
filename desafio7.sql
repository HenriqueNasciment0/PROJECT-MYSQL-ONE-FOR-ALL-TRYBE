
SELECT 
AR.artista_nome artista, 
AL.album_nome album,  
COUNT(AF.artista_id) seguidores
FROM artista AR
INNER JOIN album AL
ON AL.artista_id = AR.artista_id
INNER JOIN artistas_seguidos AF
ON AF.artista_id = AR.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
