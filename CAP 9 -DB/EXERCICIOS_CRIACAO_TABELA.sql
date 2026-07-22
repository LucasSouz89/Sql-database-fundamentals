USE loja_games;
#1
CREATE TABLE plataformas (
    plataformas_id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(plataformas_id)
);
CREATE TABLE jogos (
    jogos_id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    plataforma_id INT NOT NULL,
    PRIMARY KEY(jogos_id),
    FOREIGN KEY(plataforma_id) REFERENCES plataformas(plataformas_id)
)
#2
CREATE TABLE categorias(
    categoria_id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NOT NULL,
    PRIMARY KEY(categoria_id)
);
CREATE TABLE itens_loja(
    item_id INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY(item_id),
    FOREIGN KEY(categoria_id) REFERENCES categorias(categoria_id)
);
#3
CREATE TABLE desenvolvedoras(
    dev_id INT NOT NULL AUTO_INCREMENT,
    pais_origem VARCHAR(50) NOT NULL,
    PRIMARY KEY(dev_id)
);
CREATE TABLE catalogo_jogos(
    catalogo_id INT NOT NULL AUTO_INCREMENT,
    nome_jogo VARCHAR(100) NOT NULL,
    dev_id INT NOT NULL,
    PRIMARY KEY(catalogo_id),
    FOREIGN KEY(dev_id) REFERENCES desenvolvedoras(dev_id)
);
#4
CREATE TABLE clientes (
    cliente_id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY(cliente_id)
);
CREATE TABLE pedidos(
    pedido_id INT NOT NULL AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    cliente_id INT NOT NULL,
    PRIMARY KEY(pedido_id),
    FOREIGN KEY(cliente_id) REFERENCES clientes(cliente_id)
);
#5
CREATE TABLE jogos_principais(
    jogo_base_id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(jogo_base_id)
);
CREATE TABLE dlcs(
    dlc_id INT NOT NULL AUTO_INCREMENT,
    dlc_nome VARCHAR(100) NOT NULL,
    jogo_base_id INT NOT NULL,
    PRIMARY KEY(dlc_id),
    FOREIGN KEY(jogo_base_id) REFERENCES jogos_principais(jogo_base_id)
);