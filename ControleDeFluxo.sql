IF OBJECT_ID('TabelaTeste', 'U') IS NULL 
    CREATE TABLE [TabelaTeste](ID INT)
ELSE 
    DROP TABLE [TabelaTeste];


DECLARE @IDADE_ALUNO INT;
DECLARE @FORMADO_INGLES BIT;
DECLARE @FORMADO_ALEMAO BIT;

SET @IDADE_ALUNO = 17;
SET @FORMADO_INGLES = 1;
SET @FORMADO_ALEMAO = 0;

IF ((@IDADE_ALUNO >= 18 OR @FORMADO_INGLES = 1) OR (@IDADE_ALUNO < 18 AND @FORMADO_ALEMAO = 1))
  PRINT 'EXPRESSAO VERDADEIRA';
ELSE
  PRINT 'EXPRESSAO FALSA';

SELECT DATENAME(WEEKDAY, GETDATE());



IF (DATENAME(WEEKDAY, (DATEADD(DAY, 6, GETDATE()))) = 'Wednesday')
    PRINT('SEXTA-FEITA')
ELSE
    PRINT('OUTRO DIA');

