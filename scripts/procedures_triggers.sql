
-- Procedure para entrada de estoque
DELIMITER //
CREATE PROCEDURE entrada_estoque(IN pid INT, IN qtd INT)
BEGIN
  UPDATE produto SET estoque = estoque + qtd WHERE id = pid;
END //
DELIMITER ;

-- Exemplo de trigger (opcional)
DELIMITER //
CREATE TRIGGER atualizar_estoque
AFTER UPDATE ON produto
FOR EACH ROW
BEGIN
  INSERT INTO log_estoque (id_produto, data_alteracao)
  VALUES (NEW.id, NOW());
END //
DELIMITER ;
