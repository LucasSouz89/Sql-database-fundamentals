#EXERICIO 1
INSERT INTO personagem (nome,classe)
VALUES('Arthas','Paladino');

UPDATE personagem
SET classe = 'Necromante',nivel = 3
WHERE id = 1;

SELECT * FROM personagem;

#EXERCICIO 2
INSERT INTO personagem (nome,classe,nivel)
VALUES('Gul ''dan','Bruxo',10);


DELETE FROM personagem
WHERE classe = 'Bruxo' || nivel <= 1;

#EXERCICIO 3
INSERT INTO personagem (nome,classe,nivel)
VALUES('Gale','Mago',1);

SELECT * FROM personagem
WHERE classe = 'Necromante';

UPDATE personagem
SET nivel = 20
WHERE nome = 'Arthas';

DELETE FROM personagem
WHERE classe != 'Paladino' AND nivel= 1;