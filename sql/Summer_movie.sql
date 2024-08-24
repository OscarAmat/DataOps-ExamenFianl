USE Kaggle
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'dbo.Summer_movie')AND type='U')
CREATE TABLE dbo.Summer_movie(
    tconst NVARCHAR(255),
    genres VARCHAR(255),

);


TRUNCATE TABLE dbo.Summer_movie;
GO

BULK INSERT dbo.Summer_movie
FROM 'C:\Users\User\Documents\proyecto_parcial\dataset\summer_movie_genres.csv'
WITH
(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0X0a'
)

GO






