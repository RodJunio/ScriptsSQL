Use teste;

select 
	Cidade,
    SUM(Quantidade) As Total
FROM Vendas
GROUP BY Cidade
having SUM(Quantidade) < 2500;

SELECT
	Cidade,
    SUM(Quantidade) AS TotalTeclados
FROM Vendas
WHERE Produto = 'Teclado'
GROUP BY Cidade
HAVING SUM(Quantidade) < 1500;