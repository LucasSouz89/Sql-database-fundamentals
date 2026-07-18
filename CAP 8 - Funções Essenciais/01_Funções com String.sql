#remove os espaços
SELECT TRIM('   Carros    1');

#remove os espaços da esquerda
SELECT LTRIM('   Carros    1');

#remove os espaços da direita
SELECT RTRIM('   Carros    1');

#removendo o a
SELECT TRIM(BOTH 'a' FROM 'aaaCarrosaaaa');

#removendo o a do inicio
SELECT TRIM(LEADING 'a' FROM 'aaaCarrosaaaa');

#removendo o a do FINAL
SELECT TRIM(TRAILING 'a' FROM 'aaaCarrosaaaa');

#usando o locate para localizar a posicao
SELECT LOCATE ('o','Carros');

#letra minuscula
SELECT lcase('CARROS');

#letra maiuscula
SELECT ucase('carros');
#contar a quantidade de letras
SELECT LENGTH('Carros');

#repetir a palavra
SELECT REPEAT('Carros',4);

#cortar a palvra para aparecer as 4 da direita
SELECT RIGHT('Carros',4);

#cortar a palvra para aparecer as 4 da esquerda
SELECT LEFT('Carros',4);