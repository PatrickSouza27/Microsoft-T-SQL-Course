CREATE DATABASE [TSQLCurso];

CREATE TABLE [Nomes]([Nome] NVARCHAR(20));

--Inserindo com condição If
DECLARE @QTD INT
    SET @QTD = (SELECT COUNT([Nome]) FROM [Nomes]);
IF(@QTD <= 10)
    BEGIN
    INSERT INTO [Nomes]([Nome]) VALUES (@QTD)
    SELECT [Nome]FROM [Nomes];
    END
ELSE
    BEGIN
    INSERT INTO [Nomes]([Nome]) VALUES ('Fim');
    SELECT [Nome] FROM [Nomes];
    END

--Deletando
DELETE [Nomes] WHERE [Nome] BETWEEN '1' AND '9'; 

--Inserindo com o Whilte
DECLARE @QTD2 INT 
    SET @QTD2 = 1;
WHILE ((SELECT COUNT([Nome]) FROM [Nomes]) + 1 <= 10)
    BEGIN
        INSERT INTO [Nomes]([Nome]) VALUES (@QTD2);
        SET @QTD2 =  @QTD2 + 1;
    END;

INSERT INTO [Nomes]([Nome]) VALUES ('TESTE');

SELECT [Nome] FROM [Nomes];

DELETE [Nomes] WHERE [Nome] != '5';
