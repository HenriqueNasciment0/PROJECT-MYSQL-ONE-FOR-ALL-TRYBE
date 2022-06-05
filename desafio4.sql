
SELECT U.usuario_nome AS usuario, 
IF (
YEAR(MAX(H.historico_info)) = 2021, 'Usuário ativo', 'Usuário inativo'
) condicao_usuario 
FROM usuario U
INNER JOIN historico H
ON H.usuario_id = U.usuario_id
GROUP BY usuario
ORDER BY usuario;
