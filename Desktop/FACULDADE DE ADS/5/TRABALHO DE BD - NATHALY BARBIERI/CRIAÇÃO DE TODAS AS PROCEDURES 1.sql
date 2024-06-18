-- create database TrabalhoDb_nathaly_barbieri;
-- use TrabalhoDb_nathaly_barbieri;

/*
DELIMITER $$

CREATE PROCEDURE sp_soma(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE resultado DECIMAL(5,2);
    SET resultado = (n1 + n2);
    SELECT resultado AS SOMA;

END;
END$$

DELIMITER ;

*/
/*
DELIMITER $$

CREATE PROCEDURE sp_subtracao(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE resultado DECIMAL(5,2);
    SET resultado = (n1 - n2);
    SELECT resultado AS SUBTRAÇÃO;

END;
END$$

DELIMITER ;
*/

/*
DELIMITER $$

CREATE PROCEDURE sp_multiplicacao(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE resultado DECIMAL(7,2);
    SET resultado = (n1 * n2);
    SELECT resultado AS MULTIPLICAÇÃO;

END;
END$$

DELIMITER ;
*/


/*
DELIMITER $$

CREATE PROCEDURE sp_divisao(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE resultado DECIMAL(4,2);
	DECLARE erro VARCHAR(33);
    
    SET erro = 'NÃO É POSSÍVEL DIVIDIR POR ZERO.';
    
    IF(n2 = 0)
    THEN
        SELECT erro AS DIVISÃO;
    ELSE
        SET resultado = (n1 / n2);
		SELECT resultado AS DIVISÃO;
    END IF;

END;
END$$

DELIMITER ;

*/
/*

DELIMITER $$

CREATE PROCEDURE sp_potencia(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE resultado DECIMAL(12,2);
    SET resultado = POWER(n1,n2);
    SELECT resultado AS POTENCIAÇÃO;

END;
END$$

DELIMITER ;
*/

/*
DELIMITER $$

CREATE PROCEDURE sp_primo(IN n1 DECIMAL(4,2))
BEGIN

	DECLARE count INT;
    DECLARE primo INT;
    DECLARE resultado VARCHAR(3);

    SET count = 2;
    SET primo = 1;

    WHILE count <= n1 / 2 DO
        IF (n1 % count = 0)
		THEN
            SET primo = 0;
            SET count = n1 + 1;
        END IF;
        
        SET count = count + 1;
        
    END WHILE;

    IF (primo = 1) THEN
		SET resultado = "SIM";
        SELECT resultado AS 'O NÚMERO DIGITADO É PRIMO?';
    ELSE
		SET resultado = "NÃO";
        SELECT resultado AS 'O NÚMERO DIGITADO É PRIMO?';
    END IF;

END;
END$$

DELIMITER ;*/

/*

DELIMITER $$

CREATE PROCEDURE sp_impar_ou_par(IN n1 DECIMAL(4,2))
BEGIN

	DECLARE resultado VARCHAR(30);
    
    IF(n1 % 2 = 0)
    THEN
        SET resultado = 'O NÚMERO É PAR';
		SELECT resultado AS RESULTADO;
    ELSE
        SET resultado = 'O NÚMERO É IMPAR';
		SELECT resultado AS RESULTADO;
    END IF;

END;
END$$

DELIMITER ;

*/
/*
DELIMITER $$

CREATE PROCEDURE sp_multiplo(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE resultado VARCHAR(45);
    
    IF(n1 % n2 = 0)
    THEN
        SET resultado = 'O PRIMEIRO NÚMERO É MULTIPLO DO SEGUNDO';
		SELECT resultado AS RESULTADO;
    ELSE
        SET resultado = 'O PRIMEIRO NÚMERO NÃO É MULTIPLO DO SEGUNDO';
		SELECT resultado AS RESULTADO;
    END IF;

END;
END$$

DELIMITER ;
*/

/*

-- EU DECLAREI O N1 COMO DECIMAL PORQUE A PROFESSORA HAVIA PEDIDO NA TAREFA, MAS O CALCULO DE FATORIAL É FEITO COM NÚMEROS INTEIROS, BELEZA? 
DELIMITER $$

CREATE PROCEDURE sp_fatorial(IN n1 DECIMAL(4,2))
BEGIN

	DECLARE resultado DECIMAL(12,2);
    DECLARE count INT;

    SET resultado = 1;
    SET count = 1;

    WHILE count <= n1 DO
        SET resultado = resultado * count;
        SET count = count + 1;
    END WHILE;

    SELECT resultado AS RESULTADO;
END;

END;
END$$

DELIMITER ;*/


/*
DELIMITER $$

CREATE PROCEDURE sp_fibonacci(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE a INT;
    DECLARE b INT;
    DECLARE c INT;
    DECLARE counter INT;
    DECLARE qtd_termos INT;
    
    -- prof, se quiser mudar a quantidade do número de termos, basta alterar abaixo:
    
    SET qtd_termos = 5;
    SET a = n1;
    SET b = n2;
    SET counter = 3;

	SELECT CONCAT('TERMO 1: ', a) AS 'NÚMERO DO TERMO: VALOR DO TERMO';
	SELECT CONCAT('TERMO 2: ', b) AS 'NÚMERO DO TERMO: VALOR DO TERMO';

    WHILE counter <= qtd_termos DO
        SET c = a + b;
        SELECT CONCAT('TERMO ', counter, ': ', ' ', c) AS 'NÚMERO DO TERMO: VALOR DO TERMO';
        SET a = b;
        SET b = c;
        SET counter = counter + 1;
	END WHILE;
END;
END$$

DELIMITER ;
*/

/*
DELIMITER $$

CREATE PROCEDURE sp_area_de_circulo(IN n1 DECIMAL(4,2))
BEGIN

  DECLARE area DECIMAL(10,2);
  
  SET area = 3.14159 * (n1 * n1);

  SELECT area AS RESULTADO;

END;
END$$

DELIMITER ;
*/
/*

DELIMITER $$

CREATE PROCEDURE sp_baskara(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2))
BEGIN

	DECLARE delta DECIMAL(10,5);
    DECLARE raiz_2_delta DECIMAL(10,5);
    DECLARE x1 DECIMAL(10,5);
    DECLARE x2 DECIMAL(10,5);
    DECLARE a DECIMAL(10,5);
    DECLARE b DECIMAL(10,5);
    DECLARE c DECIMAL(10,5);
    DECLARE resultado VARCHAR(20);
    
    SET a = n1;
    SET b = n2;
    SET c = -2;
    
    -- prof, se quiser, pode mudar o valor do c ali em cima.

    SET delta = (b * b) - (4 * a * c);

    IF(delta < 0) THEN
        SET resultado = 'A EQUAÇÃO NÃO POSSUI RAIZES REAIS';
        SELECT resultado as RESULTADO;
    ELSE
        SET raiz_2_delta = SQRT(delta);
        SET x1 = (-b + raiz_2_delta) / (2 * a);
        SET x2 = (-b - raiz_2_delta) / (2 * a);

		SELECT x1 as 'VALOR DA RAIZ X1', x2 as 'VALOR DA RAIZ X2', delta as 'VALOR DO DELTA';
    END IF;


END;
END$$

DELIMITER ;
*/
/*

DELIMITER $$

CREATE PROCEDURE sp_imposto_de_renda(IN n1 DECIMAL(4,2))
BEGIN

	DECLARE val_do_IR DECIMAL(10,2);
    DECLARE f1 DECIMAL(10,2);
    DECLARE f2 DECIMAL(10,2);
    DECLARE f3 DECIMAL(10,2);
    DECLARE f4 DECIMAL(10,2);
    DECLARE aliquota1 DECIMAL(5,2);
    DECLARE aliquota2 DECIMAL(5,2);
    DECLARE aliquota3 DECIMAL(5,2);
    DECLARE aliquota4 DECIMAL(5,2);
    DECLARE deducao1 DECIMAL(10,2);
    DECLARE deducao2 DECIMAL(10,2);
    DECLARE deducao3 DECIMAL(10,2);
    DECLARE deducao4 DECIMAL(10,2);
    DECLARE is_Isento VARCHAR(3);
    DECLARE salario DECIMAL(4,2);
    
    SET salario = n1;
	SET f1 = 2112.00;
    SET f2 = 2826.65;
    SET f3 = 3751.05;
    SET f4 = 4664.68;
    SET aliquota1 = 7.5;
    SET aliquota2 = 15;
    SET aliquota3 = 22.5;
    SET aliquota4 = 27.5;
    SET deducao1 = 158.40;
    SET deducao2 = 370.40;
    SET deducao3 = 651.73;
    SET deducao4 = 884.96;

    
    IF (salario <= f1) THEN
        SET val_do_IR = 0;
    END IF;
    
	IF (salario <= f2 && salario > f1) THEN
        SET val_do_IR = ((salario - f1) * (aliquota1 / 100)) - deducao1;
    END IF;
    
	IF (salario <= f3 && salario > f2) THEN
        SET val_do_IR = ((salario - f2) *(aliquota2 / 100)) - deducao2 + ((f2 - f1) * (aliquota1 / 100)) - deducao1;
    END IF;
    
    IF (salario <= f4 && salario > f3) THEN
		SET val_do_IR = ((salario - f3) * (aliquota3 / 100)) - deducao3 + ((f3 - f2) * (aliquota2 / 100)) - deducao2 + ((f2 - f1) * (aliquota1 / 100)) - deducao1;
    END IF;
    
    IF (salario > f4) THEN
        SET val_do_IR = ((salario - f4) * (aliquota4 / 100)) - deducao4 + ((f4 - f3) * (aliquota3 / 100)) - deducao3 + ((f3 - f2) * (aliquota2 / 100)) - deducao2 + ((f2 - f1) * (aliquota1 / 100)) - deducao1;
    END IF;
    
    IF (val_do_IR < 0) THEN
		SET is_Isento = 'SIM';
    ELSE
		SET is_Isento = 'NÃO';
    END IF;
    
    SELECT CONCAT('R$ ', salario) AS 'VALOR DO SALÁRIO', CONCAT('R$ ', val_do_IR) AS 'VALOR DO IMPOSTO DE RENDA', is_Isento AS 'A PESSOA ESTÁ ISENTA DE PAGAR O IMPOSTO DE RENDA?';

END;
END$$

DELIMITER ;

*/

/*
DELIMITER $$

CREATE PROCEDURE sp_aliquota_INSS(IN n1 DECIMAL(4,2))
BEGIN

	DECLARE aliquota DECIMAL(5,2);
	DECLARE desconto DECIMAL(10,2);
    DECLARE f1 DECIMAL(10,2);
    DECLARE f2 DECIMAL(10,2);
    DECLARE f3 DECIMAL(10,2);
    DECLARE f4 DECIMAL(10,2);
	DECLARE salario DECIMAL(4,2);
    
    SET salario = n1;
	SET f1 = 1302.00;
    SET f2 = 2571.29;
    SET f3 = 3856.94;
    SET f4 = 7507.49;

    IF (salario <= f1) THEN
        SET aliquota = 7.5;
        SET desconto = salario * aliquota / 100;
	END IF;
    IF (salario <= f2 && salario > f1) THEN
        SET aliquota = 9;
        SET desconto = ((salario - f1) * aliquota / 100) + (f1 * 7.5 / 100);
	END IF;
    IF (salario <= f3 && salario > f2) THEN

        SET aliquota = 12;
        SET desconto = ((salario - f2) * aliquota / 100) + ((f2 - f1) * 9 / 100) + (f1 * 7.5 / 100);
	END IF;
    IF (salario <= f4 && salario > f3) THEN

        SET aliquota = 14;
        SET desconto = ((salario - f3) * aliquota / 100) + ((f3 - f2) * 12 / 100) + ((f2 - f1) * 9 / 100) + (f1 * 7.5 / 100);
        
	END IF;
    IF (salario > f4) THEN
        SET aliquota = 14;
        SET desconto = ((f4 - f3) * aliquota / 100) + ((f3 - f2) * 12 / 100) + ((f2 - f1) * 9 / 100) + (f1 * 7.5 / 100);
	END IF;
    
    SELECT CONCAT('R$ ', salario) AS 'VALOR DO SALÁRIO', CONCAT('R$ ', aliquota) AS 'PORCENTAGEM DA ALIQUOTA APLICADA', CONCAT('R$ ', desconto) AS 'VALOR DO DESCONTO DO INSS';

END;
END$$

DELIMITER ;*/
/*

-- PROCEDURE PRINCIPAL:

DELIMITER $$

CREATE PROCEDURE sp_calcula(IN n1 DECIMAL(4,2), IN n2 DECIMAL(4,2), IN opc CHAR(1))
BEGIN

IF (opc = '+') THEN

CALL sp_soma(n1, n2);

END IF;

IF (opc = '-') THEN

CALL sp_subtracao(n1, n2);

END IF;

IF (opc = '*') THEN

CALL sp_multiplicacao(n1, n2);

END IF;

IF (opc = '/') THEN

CALL sp_divisao(n1, n2);

END IF;

IF (opc = '^') THEN

CALL sp_potencia(n1, n2);

END IF;

IF (opc = 'P') THEN

CALL sp_primo(n1);

END IF;

IF (opc = 'I') THEN

CALL sp_impar_ou_par(n1);

END IF;

IF (opc = 'M') THEN

CALL sp_multiplo(n1, n2);

END IF;

IF (opc = '!') THEN

CALL sp_fatorial(n1);

END IF;

IF (opc = 'F') THEN

CALL sp_fibonacci(n1, n2);

END IF;

IF (opc = 'A') THEN

CALL sp_area_de_circulo(n1);

END IF;

IF (opc = 'B') THEN

CALL sp_baskara(n1, n2);

END IF;

IF (opc = 'R') THEN

CALL sp_imposto_de_renda(n1, n2);

END IF;

IF (opc = 'L') THEN

CALL sp_aliquota_INSS(n1, n2);

END IF;

END;
END$$

DELIMITER ;
*/
