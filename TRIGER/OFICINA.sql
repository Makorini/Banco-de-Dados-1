DROP DATABASE IF EXISTS OFICINA;
CREATE DATABASE OFICINA;
USE OFICINA;



CREATE TABLE CLIENTE (
	ID_CLIENTE INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	NOME TEXT NOT NULL,
  	EMAIL TEXT NOT NULL,
  	TELEFONE TEXT NOT NULL
);

CREATE TABLE AUTOMOVEL (
	ID_AUTOMOVEL INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	PLACA TEXT NOT NULL,
	MARCA TEXT NOT NULL,
	MODELO TEXT NOT NULL,
	ANO INT NOT NULL,
	ID_CLIENTE INT NOT NULL,
	CONSTRAINT FK_ID_CLIENTE FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
);

CREATE TABLE SERVICO (
	ID_SERVICO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	DATA_SERVICO DATETIME NOT NULL,
	DESCRICAO TEXT NOT NULL,
	ID_AUTOMOVEL INT NOT NULL,
	CONSTRAINT FK_ID_AUTOMOVEL FOREIGN KEY(ID_AUTOMOVEL) REFERENCES AUTOMOVEL(ID_AUTOMOVEL)
);
INSERT INTO CLIENTE (NOME, EMAIL, TELEFONE) VALUES
('Bianca', 'bianca12@gmail.com', '49999674527'),
('José Carlos', 'zeca135@gmail.com', '49999995376'),
('André Ribeiro', 'andreribeiro@hotmail.com', '53977654356'),
('Mariana das Chagas', 'marichagas@outlook.com', '48966754321');


INSERT INTO AUTOMOVEL (PLACA, MARCA, MODELO, ANO, ID_CLIENTE)VALUES 
('QWE9843', 'Volkswagen', 'Gol', 2020, 1),
('BGY6532', 'Volkswagen', 'Gol', 2011, 2),
('FLM3321', 'Renault', 'Sandero', 2015, 3),
('MPD9982', 'Fiat', 'Uno', 2001, 4);

INSERT INTO SERVICO (DATA_SERVICO, DESCRICAO, ID_AUTOMOVEL) VALUES
(20211010, "Troca de óleo", 1),
(20240510, "Geometria", 2),
(20230916, "Reparo nos bicos de injeção", 3),
(20220407, "Troca de velas", 4),
(20230115, "Troca de óleo", 1),
(20230220, "Revisão geral", 2),
(20230310, "Alinhamento e balanceamento", 1),
(20230405, "Troca de pneus", 3),
(20230522, "Manutenção do motor", 4),
(20230618, "Troca de pastilhas de freio", 1);

SELECT 
    C.ID_CLIENTE,
    C.NOME,
    COUNT(C.ID_CLIENTE) AS QUANTIDADE_VISITAS
FROM
    CLIENTE AS C,
    AUTOMOVEL AS A,
    SERVICO AS S
WHERE
    C.ID_CLIENTE = A.ID_CLIENTE AND
    S.ID_AUTOMOVEL = A.ID_AUTOMOVEL
GROUP BY
    C.ID_CLIENTE, C.NOME
ORDER BY 
    QUANTIDADE_VISITAS DESC;

SELECT 
A.MARCA, A.MODELO, A.ANO,
COUNT(S.ID_SERVICO) AS QUANTIDADE_VISITAS
FROM 
AUTOMOVEL AS A, SERVICO AS S
WHERE
A.ID_AUTOMOVEL = S.ID_AUTOMOVEL
GROUP BY A.ID_AUTOMOVEL;

