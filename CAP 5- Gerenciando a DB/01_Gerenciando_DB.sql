-- Cuidado: o DROP SCHEMA apaga o banco inteiro (tabelas, dados e tudo mais). Use com cautela!
DROP SCHEMA sakila;

/* 
  Passo a passo para importar o Sakila no MySQL Workbench:
  1. Primeiro, baixe o arquivo .zip do Sakila e extraia em uma pasta aí no seu PC.
  2. No Workbench, vá em 'Open SQL script file in a new query tab' e abra o arquivo 'sakila-schema.sql'. Execute ele para criar a estrutura das tabelas.
  3. Depois, faça o mesmo processo para o arquivo 'sakila-data.sql' e execute para popular o banco com as informações.
  
  O arquivo .mwb é o modelo visual, caso precise editar o desenho do banco depois.
*/