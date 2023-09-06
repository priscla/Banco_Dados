CREATE TABLE funcionario(
  codigo INT PRIMARY KEY ,
  nome varchar(150),
  endereco varchar(250),
  telefone varchar(13),
  cod_departamento int,
  FOREIGN KEY (cod_departamento) REFERENCES departameto(codigo)
);

CREATE TABLE departamento(
  codigo INT PRIMARY KEY,
  descricao varchar(200)
);

CREATE TABLE dependentes(
  codigo INT PRIMARY KEY,
  cod_funcionario INT,
  nome varchar(150),
  data_nasc DATE,
  FOREIGN KEY (cod_funcionario) REFERENCES funcionario(codigo)
);