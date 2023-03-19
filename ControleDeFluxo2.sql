SELECT * FROM [Curso];

DECLARE @SomaCategoriaId INT SET @SomaCategoriaId = (SELECT SUM([CategoriaId]) FROM [Curso]);
IF (@SomaCategoriaId <= 10)
    PRINT('DEU RUIM')
ELSE 
    PRINT('DEU BOM');