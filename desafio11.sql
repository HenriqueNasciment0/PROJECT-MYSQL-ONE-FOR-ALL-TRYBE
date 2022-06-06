
SELECT
    musicas_nome nome_musica,
    CASE
        WHEN musicas_nome = 'Without My Streets' THEN 'Without My Code Review'
        WHEN musicas_nome = 'Dance With Her Own' THEN 'Dance With Trybe'
        WHEN musicas_nome = 'Troubles Of My Inner Fire' THEN 'Troubles Of My Project'
		WHEN musicas_nome = "Let's Be Silly" THEN "Let's Be Nice"
        WHEN musicas_nome = 'Magic Circus' THEN 'Magic Pull Request'
        ELSE NULL
    END AS novo_nome
FROM musicas
WHERE musicas_nome LIKE 'Dance%'
OR musicas_nome LIKE 'Without My Streets%'
OR musicas_nome LIKE 'Troubles%'
OR musicas_nome LIKE "Let's%"
OR musicas_nome LIKE 'Magic%'
ORDER BY nome_musica;
