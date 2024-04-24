/*
1.  Contar Produtos em Estoque

Escreva uma consulta que conte o total de produtos disponíveis em estoque.

2. Média de Preços

Escreva uma consulta que calcule a média dos preços dos produtos.



3. Listar Produtos com "Modelo 20" no Nome

Escreva uma consulta para encontrar todos os produtos que têm "Modelo 20" em seu nome, selecionando todas as informações desses produtos.



4. Produtos com Preço entre 50 e 150

Escreva uma consulta para selecionar o nome, preco e descricao dos produtos com preço entre 50 e 150.



5. Listar os 5 Produtos Mais Baratos

Escreva uma consulta para listar o nome e preco dos 5 produtos mais baratos.



6. Produtos que Não Estão em Estoque

Escreva uma consulta para selecionar o nome dos produtos que não têm nenhum item em estoque.



7. Listar Produtos com Descrição

Escreva uma consulta para selecionar o nome e descricao dos produtos que possuem uma descrição (não é nula ou vazia).



8. Produtos com Preço Acima da Média

Escreva uma consulta para selecionar o nome e preco dos produtos cujo preço está acima da média dos preços de todos os produtos.



9. Selecionar Produtos com "SSD" no Nome

Escreva uma consulta para selecionar todas as informações dos produtos que têm "SSD" no nome.



10. Produtos Ordenados por Preço em Ordem Decrescente

Escreva uma consulta para listar o nome e preco de todos os produtos, ordenados pelo preço em ordem decrescente.



11. Listar Produtos com Quantidade de Estoque Par

Escreva uma consulta para selecionar o nome e quantidade_estoque dos produtos cuja quantidade em estoque é um número par.



12. Selecionar Nome e Descrição de Produtos com Preço Inferior a 100 e em Estoque

Escreva uma consulta para selecionar o nome e descricao dos produtos que têm preço inferior a 100 e uma quantidade em estoque superior a 0.
*/
USE VENDA_ONLINE;
-- 1
SELECT COUNT(QUANTIDADE_ESTOQUE)
FROM PRODUTOS;
-- 2

SELECT FORMAT(AVG(PRECO), 2)
FROM PRODUTOS;

-- 3

SELECT *
FROM PRODUTOS
WHERE NOME LIKE 'Modelo 20';

-- 4

SELECT  NOME,
DESCRICAO,
        PRECO
FROM PRODUTOS
WHERE PRECO BETWEEN 50 AND 100;

-- 5

SELECT  NOME,
PRECO
FROM PRODUTOS
ORDER BY PRECO
LIMIT 5;

-- 6

SELECT NOME
FROM PRODUTOS
WHERE QUANTIDADE_ESTOQUE IS NULL OR
QUANTIDADE_ESTOQUE = 0;
       
-- 7

SELECT NOME,
DESCRICAO
FROM PRODUTOS
WHERE DESCRICAO IS NOT NULL OR
DESCRICAO <> '';
       
-- 8

SELECT  NOME,
PRECO
FROM PRODUTOS
WHERE PRECO > (SELECT AVG(PRECO) FROM PRODUTOS);

-- 9

SELECT NOME
FROM PRODUTOS
WHERE NOME LIKE '%SSD%';

-- 10

SELECT NOME,
PRECO
FROM PRODUTOS
ORDER BY PRECO DESC;

-- 11

SELECT NOME,
QUANTIDADE_ESTOQUE
FROM PRODUTOS
WHERE (QUANTIDADE_ESTOQUE % 2) = 0;

-- 12

SELECT	NOME,
		DESCRICAO
FROM PRODUTOS
WHERE	PRECO < 100 AND
		QUANTIDADE_ESTOQUE > 0;