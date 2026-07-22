USE carros;

/* ==========================================================================
   GUIA DE TIPOS DE DADOS (DATA TYPES) EM SQL (MySQL)
   ================================================================----------
   O tipo de dado de uma coluna define o que ela pode armazenar (números, 
   textos, datas, etc.) e como o banco de dados interage com essa informação.
   ========================================================================== */

/* --------------------------------------------------------------------------
   1. TIPOS DE DADOS NUMÉRICOS
   Usados para armazenar valores inteiros ou com casas decimais.
   -------------------------------------------------------------------------- */

-- INT (ou INTEGER): 
-- Armazena números inteiros (sem casas decimais). 
-- Exemplo na sua tabela: IDs e chaves estrangeiras (ex: marcas_id, id).
-- Intervalo comum: de -2.147.483.648 a 2.147.483.647 (quando Signed).

-- DECIMAL(size, d):
-- Armazena números exatos com casas decimais (ótimo para dinheiro ou medidas precisas).
-- 'size' indica o número total de dígitos permitidos.
-- 'd' indica quantos dígitos ficam após a vírgula (ponto).
-- Exemplo: DECIMAL(10,2) permite valores até 99999999.99.

-- BIGINT:
-- Semelhante ao INT, mas para números inteiros gigantescos.
-- Usado em tabelas com bilhões de registros ou controle de logs globais.


/* --------------------------------------------------------------------------
   2. TIPOS DE DADOS DE TEXTO (STRING)
   Usados para armazenar palavras, frases, nomes, códigos e descrições.
   -------------------------------------------------------------------------- */

-- VARCHAR(size):
-- String de comprimento VARIÁVEL (o mais utilizado no dia a dia).
-- O 'size' define o limite máximo de caracteres que podem ser inseridos.
-- Exemplo na sua tabela: nome_marca VARCHAR(255), modelo VARCHAR(255).
-- Ocupa apenas o espaço dos caracteres que realmente são digitados.

-- CHAR(size):
-- String de comprimento FIXO. 
-- Se você definir CHAR(10) e digitar "Carro", ele vai preencher o restante 
-- dos 10 espaços com vazios no disco. Usado para códigos de tamanho exato (ex: siglas de estados "SP").

-- TEXT:
-- Usado para blocos grandes de texto (artigos, descrições longas, biografias).
-- Não exige a definição de um tamanho fixo curto como o VARCHAR.


/* --------------------------------------------------------------------------
   3. TIPOS DE DADOS DE DATA E HORA
   Usados para registrar momentos, prazos, histórico de cadastros e eventos.
   -------------------------------------------------------------------------- */

-- DATE:
-- Armazena apenas a data. 
-- Formato padrão: YYYY-MM-DD (Ano, Mês e Dia).
-- Exemplo: '2026-07-22'.

-- DATETIME:
-- Armazena a combinação de data e hora.
-- Formato padrão: YYYY-MM-DD HH:MM:SS.
-- Muito útil para saber exatamente quando um registro foi criado no sistema.

-- TIMESTAMP:
-- Semelhante ao DATETIME, mas frequentemente usado para rastrear modificações 
-- automáticas (como data da última atualização de um registro).