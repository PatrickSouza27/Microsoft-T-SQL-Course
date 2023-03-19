
SELECT [Nome], CHARINDEX(' ', Nome) FROM [Nomes];
SELECT SUBSTRING(Nome, 1, CHARINDEX(' ', Nome)) FROM [Nomes];

DECLARE @Nome NVARCHAR(20) SET @Nome = 'Patrick A. Souza';
PRINT 'O primeiro nome do ' + @Nome + ' é ' + SUBSTRING(@Nome, 1, CHARINDEX(' ', @Nome));