Use teste;

CREATE TABLE Vendas (
ID Smallint Primary Key,
Nome_Vendedor Varchar(20),
Quantidade Int,
Produto Varchar(20),
Cidade Varchar(20)
);

INSERT INTO Vendas (ID, Nome_Vendedor, Quantidade, Produto, Cidade)
  VALUES
(10,'Jorge',1400,'Mouse','São Paulo'),
(12,'Tatiana',1220,'Teclado','São Paulo'),
(14,'Ana',1700,'Teclado','Rio de Janeiro'),
(15,'Rita',2120,'Webcam','Recife'),
(18,'Marcos',980,'Mouse','São Paulo'),
(19,'Carla',1120,'Webcam','Recife'),
(22,'Roberto',3145,'Mouse','São Paulo');

SELECT SUM(Quantidade) As TotalMouses
FROM Vendas
WHERE Produto = 'Mouse';

SELECT Cidade, SUM(Quantidade) As Total
FROM Vendas
GROUP BY Cidade;

SELECT Cidade, COUNT(*) As Total
FROM Vendas
GROUP BY Cidade;

SELECT Nome_Vendedor, SUM(Quantidade)
FROM Vendas
GROUP BY Nome_Vendedor;