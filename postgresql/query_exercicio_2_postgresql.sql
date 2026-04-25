-- 2
SELECT cliente_id, SUM(valor)
FROM pedidos
GROUP BY cliente_id;
