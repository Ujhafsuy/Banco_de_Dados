-- 1
SELECT *
FROM LIVROS
WHERE DISPONIVEL = 1;

-- 2
SELECT *
FROM LIVROS
WHERE EDITORA LIKE "HarperCollins";

-- 3
SELECT *
FROM LIVROS
WHERE ANO_PUBLICACAO BETWEEN 2000 AND 2010;

-- 4
SELECT 
    AUTOR, COUNT(TITULO)
FROM LIVROS
GROUP BY AUTOR
HAVING COUNT(TITULO) > 3;

-- 5
SELECT *
FROM LIVROS
WHERE TITULO LIKE "%Senhor%";

-- 6
SELECT *
FROM LIVROS
WHERE CATEGORIA IN ( "Fantasia", "Ficção Científica", "Fábula");

-- 7 
SELECT DISTINCT IDIOMA
FROM LIVROS;

-- 8
SELECT *
FROM LIVROS
WHERE	QUANTIDADE_PAGINAS BETWEEN 200 AND 400;

-- 9
SELECT	TITULO,
		ANO_PUBLICACAO
FROM LIVROS
ORDER BY ANO_PUBLICACAO


