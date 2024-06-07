USE AVALIACAO_22B;

-- 1

INSERT INTO LIVROS (TITULO, AUTOR, ANO_PUBLICACAO, DISPONIVEL, CATEGORIA, ISBN, EDITORA, QUANTIDADE_PAGINAS, IDIOMA)
VALUES ("AS CRÔNICAS DE NÁRNIA", "C.S LEWIS", 1950, TRUE, "FANTASIA", "978-0064471190", "HARPERCOLLINS", 768, "INGLÊS");

SELECT * FROM LIVROS
WHERE TITULO = "AS CRÔNICAS DE NÁRNIA";

-- 2

INSERT INTO LIVROS (TITULO, AUTOR, ANO_PUBLICACAO, DISPONIVEL, CATEGORIA, ISBN, EDITORA, QUANTIDADE_PAGINAS, IDIOMA)
VALUES ("CEM ANOS DE SOLIDÃO", "GABRIEL GARCIA MARQUEZ", 1967, TRUE, "FICÇÃO", '978-0241968581', "PENGUIN BOOKS", 422, "ESPANHOL"),
("HARRY POTTER E A PEDRA FILOSOFAL", "J.K. ROWLING", 1997, TRUE, "FANTASIA", '978-0439708180', "BLOOMSBURY", 309, "INGLÊS"),
        ("O SENHOR DOS ANÉIS: A SOCIEDADE DO ANEL", "J.R.R. TOLKIEN", 1954, TRUE, "FANTASIA", '978-0618640157', "HARPERCOLLINS", 423, "INGLÊS");

-- 3

INSERT INTO LIVROS (TITULO, AUTOR, ANO_PUBLICACAO, DISPONIVEL, CATEGORIA, ISBN, EDITORA, QUANTIDADE_PAGINAS, IDIOMA)
VALUES ("NAPOLEÃO BOM NA PARTY", "ELMA MARIA", 1503, TRUE, "HISTÓRIA", "978-0064471191", "SHOUNEN PULO", 2, "PORTUGUÊS");

-- 4

UPDATE LIVROS
SET DISPONIVEL = FALSE
WHERE ANO_PUBLICACAO < 2000;

-- 5

UPDATE LIVROS
SET EDITORA = "PLUME BOOKS"
WHERE TITULO = "1984";

-- 6

UPDATE LIVROS
SET IDIOMA = "INGLÊS"
WHERE EDITORA = "PENGUIN BOOKS";

-- 7

UPDATE LIVROS
SET TITULO = "HARRY POTTER E A PEDRA FILOSOFAL (EDIÇÃO ESPECIAL)"
WHERE ISBN = "978-0439708180";

-- 8

DELETE FROM LIVROS
WHERE CATEGORIA = "TERROR";

-- 9

DELETE FROM LIVROS
WHERE IDIOMA = "FRANCÊS" AND ANO_PUBLICACAO < 1970;

-- 10

DELETE FROM LIVROS
WHERE TITULO = "AS CRÔNICAS DE NÁRNIA";

-- 11

DELETE FROM LIVROS
WHERE EDITORA = "PENGUIN BOOKS";

-- 12

SELECT * FROM LIVROS
WHERE QUANTIDADE_PAGINAS > 500;

-- 13

SELECT COUNT(CATEGORIA) FROM LIVROS
GROUP BY CATEGORIA;

-- 14

SELECT * FROM LIVROS
LIMIT 0,5;

-- 15

SELECT COUNT(QUANTIDADE_PAGINAS) AND SUM(QUANTIDADE_PAGINA) FROM LIVROS
WHERE CATEGORIA = "DRAMA";

-- 16

SELECT AVG(ANO_PUBLICACAO)
FROM LIVROS;

-- 17

SELECT MAX(ANO_PUBLICACAO), MIN(ANO_PUBLICACAO)
FROM LIVROS;

-- 18

SELECT *
FROM LIVROS
ORDER BY ANO_PUBLICACAO DESC;

-- 19

SELECT TITULO
FROM LIVROS
WHERE IDIOMA = "INGLÊS"
UNION
SELECT TITULO FROM LIVROS
WHERE IDIOMA = "PORTUGUÊS";

-- 20

SELECT *
FROM LIVROS
WHERE AUTOR = "GEORGE ORWELL";