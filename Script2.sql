USE VENDA_ONLINE;
SELECT sum(preco) FROM produtos where id in (1, 2);
SELECT SUM(PRECO) FROM PRODUTOS WHERE ID = 1 AND ID = 2;
 
 /*
 
 Inserir 10 registros por tabelas;
4 comandos que atualizem alguns destes registros;
2 comandos que excluem registros.

*/
INSERT INTO CLIENTES
VALUES
( NULL, 'Bolsonaro', 'example1@gmail.com', '99999945', '2009-02-01' ),
( NULL, 'Messias', 'example2@gmail.com', '99999967', '2008-02-01' ),
( NULL, 'Jair', 'example3@gmail.com', '99999912', '2007-02-01' ),
( NULL, 'Santos', 'example4@gmail.com', '99999991', '2006-02-01' ),
( NULL, 'Silvio', 'example5@gmail.com', '99999992', '2005-02-01' ),
( NULL, 'Derek', 'example6@gmail.com', '99999993', '2009-07-28' ),
( NULL, 'Mayck', 'example7@gmail.com', '99999996', '2004-06-21' ),
( NULL, 'Bruno', 'example8@gmail.com', '99999994', '2010-05-08' ),
( NULL, 'Marcus', 'example9@gmail.com', '99999998', '2000-05-30' ),
( NULL, 'David', 'example10@gmail.com', '99999997', '2003-02-02' );

INSERT INTO PRODUTOS
VALUES
( NULL, 'Teste', 5.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 100 ),
( NULL, 'Teste1', 6.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 200 ),
( NULL, 'Teste2', 7.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 300 ),
( NULL, 'Teste3', 8.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 400 ),
( NULL, 'Teste4', 9.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 500 ),
( NULL, 'Teste5', 10.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 600 ),
( NULL, 'Teste6', 11.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 700 ),
( NULL, 'Teste7', 12.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 800 ),
( NULL, 'Teste8', 13.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 900 ),
( NULL, 'Teste9', 14.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1000 );

INSERT INTO PEDIDOS
VALUES
( NULL, NULL, '2024-03-20', ( SELECT SUM(PRECO) FROM PRODUTOS WHERE ID IN (1, 2) ), '2024-03-25' );
( NULL, 'Messias', 'example2@gmail.com', '99999967', '2008-02-01' ),
( NULL, 'Jair', 'example3@gmail.com', '99999912', '2007-02-01' ),
( NULL, 'Santos', 'example4@gmail.com', '99999991', '2006-02-01' ),
( NULL, 'Silvio', 'example5@gmail.com', '99999992', '2005-02-01' ),
( NULL, 'Derek', 'example6@gmail.com', '99999993', '2009-07-28' ),
( NULL, 'Mayck', 'example7@gmail.com', '99999996', '2004-06-21' ),
( NULL, 'Bruno', 'example8@gmail.com', '99999994', '2010-05-08' ),
( NULL, 'Marcus', 'example9@gmail.com', '99999998', '2000-05-30' ),
( NULL, 'David', 'example10@gmail.com', '99999997', '2003-02-02' );

INSERT INTO ITENS_PEDIDO
VALUES
( NULL, 'Bolsonaro', 'example1@gmail.com', '99999945', '2009-02-01' ),
( NULL, 'Messias', 'example2@gmail.com', '99999967', '2008-02-01' ),
( NULL, 'Jair', 'example3@gmail.com', '99999912', '2007-02-01' ),
( NULL, 'Santos', 'example4@gmail.com', '99999991', '2006-02-01' ),
( NULL, 'Silvio', 'example5@gmail.com', '99999992', '2005-02-01' ),
( NULL, 'Derek', 'example6@gmail.com', '99999993', '2009-07-28' ),
( NULL, 'Mayck', 'example7@gmail.com', '99999996', '2004-06-21' ),
( NULL, 'Bruno', 'example8@gmail.com', '99999994', '2010-05-08' ),
( NULL, 'Marcus', 'example9@gmail.com', '99999998', '2000-05-30' ),
( NULL, 'David', 'example10@gmail.com', '99999997', '2003-02-02' );


