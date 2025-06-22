
INSERT INTO categoria (nome) VALUES ('Bebidas'), ('Limpeza'), ('Alimentos');

INSERT INTO fornecedor (nome, contato) VALUES 
('Distribuidora XPTO', 'xpto@email.com'),
('Fornecedor Y', 'y@email.com');

INSERT INTO produto (nome, preco, estoque, id_categoria, id_fornecedor) VALUES
('Coca-Cola', 5.50, 100, 1, 1),
('Detergente', 2.75, 50, 2, 2),
('Arroz 5kg', 20.00, 200, 3, 1);
