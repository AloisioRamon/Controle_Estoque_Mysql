
CREATE DATABASE controle_estoque;
USE controle_estoque;

CREATE TABLE categoria (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

CREATE TABLE fornecedor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  contato VARCHAR(100)
);

CREATE TABLE produto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  estoque INT NOT NULL DEFAULT 0,
  id_categoria INT,
  id_fornecedor INT,
  FOREIGN KEY (id_categoria) REFERENCES categoria(id),
  FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id)
);
