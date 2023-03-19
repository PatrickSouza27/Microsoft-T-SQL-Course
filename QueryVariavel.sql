
CREATE TABLE [Nomes](Nome NVARCHAR(20));

DECLARE @Nome NVARCHAR(20);
    SET @Nome = 'Patrick Souza'
        PRINT @Nome;

INSERT INTO [Nomes]([Nome]) VALUES (@Nome);

SELECT * FROM [Nomes];