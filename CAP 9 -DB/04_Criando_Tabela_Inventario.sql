USE carros;
#Criando tabela inventario
CREATE TABLE inventario (
   id INT NOT NULL AUTO_INCREMENT,
   modelo VARCHAR(255) NOT NULL,
   transmissao VARCHAR(100) NOT NULL,
   motor VARCHAR(100) NOT NULL,
   combustivel VARCHAR(255) NOT NULL,
   #Colocando a chave estrangeira da tabela marcas
   marcas_id INT NOT NULL,
   PRIMARY KEY(id),
   #Referenciando a tabela marcas
   FOREIGN KEY(marcas_id) REFERENCES marcas(id)
);