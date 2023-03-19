SELECT * FROM [Nomes]

INSERT INTO [Nomes]([Nome]) VALUES ('P');

DECLARE @Nome NVARCHAR(20)
    SET @Nome = 'Patrick Souza';

UPDATE [Nomes] 
    SET Nome = @Nome
    WHERE Nome = 'Patrick'

DECLARE @PrimeiroNome NVARCHAR(20)
    SET @PrimeiroNome = (SELECT TOP 1 [Nome] FROM [Nomes])
        PRINT(@PrimeiroNome);

DECLARE @NomeUpdate NVARCHAR(20)
    SET @NomeUpdate = 'Patrick A. Souza'           
DECLARE @AtualizarPrimeiroNome NVARCHAR(20)
    SET @AtualizarPrimeiroNome = (SELECT TOP 1 [Nome] FROM [Nomes])
        UPDATE [Nomes] SET [Nome] = @NomeUpdate WHERE [Nome] = @AtualizarPrimeiroNome;


