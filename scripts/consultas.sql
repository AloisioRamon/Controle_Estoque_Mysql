
-- Produtos com estoque abaixo de 60 unidades
SELECT nome, estoque FROM produto WHERE estoque < 60;

-- Total em estoque por categoria
SELECT c.nome AS categoria, SUM(p.estoque) AS total
FROM produto p
JOIN categoria c ON p.id_categoria = c.id
GROUP BY c.nome;
