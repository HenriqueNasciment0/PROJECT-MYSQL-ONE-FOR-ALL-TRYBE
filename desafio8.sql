
SELECT AR.artista_nome artista, AL.album_nome album
FROM artista AR
INNER JOIN album AL
ON AR.artista_id = AL.artista_id
WHERE AR.artista_nome LIKE '%Walter%';
