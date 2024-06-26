DELIMITER $$

CREATE PROCEDURE `GetAllProducts`()
BEGIN
	/* Declaração de variaveis */
	DECLARE totalSale DEC(10,2) DEFAULT 0.0;
	DECLARE x, y, total, qtd INT DEFAULT 0;
	/*----------------------------**/

	/* Atribuição de valores */
	SET total = 10;
    
    /* carregando valores de um Select em uma variavel */
    SELECT COUNT(*)
	INTO qtd
	FROM produto;
	
    SELECT qtd;
    
    SELECT * FROM PRODUTO;


END$$

DELIMITER ;