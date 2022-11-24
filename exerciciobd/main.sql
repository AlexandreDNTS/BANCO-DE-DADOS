/*
1 - Exercício - Defina as tabelas abaixo usando SQL.

2 - crie um domínio para usar nos atributos códigos.

3 - É obrigatório que:
    - Quantidade seja maior que zero
    - Nome da peça não seja nullo
    - A data de venda seja superior a 01/01/2008
*/
CREATE TABLE Fornecedor
(
    codigo CHAR(11) NOT NULL,
    nome VARCHAR(150) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    PRIMARY KEY(codigo)
);
CREATE TABLE Venda
(
    codForn CHAR(11) NOT NULL,
    codPeca CHAR(11) NOT NULL,
    quantidade INT ,
    dataVenda date DEFAULT NULL,
    PRIMARY KEY(codPeca),
    FOREIGN KEY (codForn) REFERENCES dataVenda(codPeca)
);
CREATE TABLE peca
(
    codPeca CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    PRIMARY KEY (codPeca)
)