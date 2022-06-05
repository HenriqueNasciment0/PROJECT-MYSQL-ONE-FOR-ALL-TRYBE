
SELECT 
MIN(P.valor) faturamento_minimo, 
MAX(P.valor) faturamento_maximo, 
ROUND(AVG(P.valor), 2) faturamento_medio, 
SUM(P.valor) faturamento_total
FROM plano P
INNER JOIN usuario U
ON U.plano_id = P.plano_id;
