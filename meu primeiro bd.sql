--   Criando o schema do BD
CREATE SCHEMA `BD2401`;
--  Excluindo o BD
DROP DATABASE `BD2401`;
-- Criando a tabela
new_tableCREATE TABLE `BD2401`.`NEW_TABLE`(
   `ID_MEMBER` INT NOT NULL AUTO_INCREMENT,
   `FIRST_NAME` VARCHAR(20) NOT NULL,
   `ACTIVE` BIT(1) NULL DEFAULT 1,
   `WHEN_ADDED` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
   `LAST_MODIFIED` TIMESTAMP NULL 
      DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`ID_MEMBER`)
);

-- INCERINDO DADOS NATABELA
INSERT INTO`BD2401`.`NEW_TABLE` (`FIRST_NAME`)
VALUES ('BIANCA');

INSERT INTO`BD2401`.`NEW_TABLE` (`FIRST_NAME`)
VALUES ('LANA', 0);

INSERT INTO`BD2401`.`NEW_TABLE` (`FIRST_NAME`)
VALUES ('JAKE', 0);

-- EXIBINDO/CONSULTANDO DADOS
SELECT * FROM `BD2401`.`NEW_TABLE`;