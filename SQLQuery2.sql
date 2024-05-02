CREATE TABLE Movies(
  id INT IDENTITY(1,1) PRIMARY KEY,
  [Name] NVARCHAR(250) NOT NULL,
  Director NVARCHAR(250) NOT NULL,
  Genre NVARCHAR(250) NOT NULL,
  RealeseDate DATE NOT NULL ,
    DurationMinute INT NOT NULL,
	TicketPrice int NOT NULL,
)
INSERT INTO Movies ([Name], Director, Genre, RealeseDate, DurationMinute, TicketPrice)
VALUES 
('Inception', 'Christopher Nolan', 'Sci-Fi', '2010-07-16', 148, 10),
('The Shawshank Redemption', 'Frank Darabont', 'Drama', '1994-10-14', 142, 8),
('The Godfather', 'Francis Ford Coppola', 'Crime', '1972-03-24', 175, 9),
('Pulp Fiction', 'Quentin Tarantino', 'Crime', '1994-10-14', 154, 8),
('The Dark Knight', 'Christopher Nolan', 'Action', '2008-07-18', 152, 10),
('Forrest Gump', 'Robert Zemeckis', 'Drama', '1994-07-06', 142, 8),
('Fight Club', 'David Fincher', 'Drama', '1999-10-15', 139, 8),
('The Matrix', 'The Wachowskis', 'Sci-Fi', '1999-03-31', 136, 8),
('Interstellar', 'Christopher Nolan', 'Sci-Fi', '2014-11-07', 169, 10),
('Gladiator', 'Ridley Scott', 'Action', '2000-05-05', 155, 9);

select SUM(DurationMinute) FROM Movies;
select AVG(TicketPrice) from Movies
SELECT *FROM Movies WHERE DurationMinute = (SELECT MIN(DurationMinute) FROM Movies);
SELECT Genre, COUNT(*) AS TotalMovies, AVG(DurationMinute) AS AvgDuration FROM Movies
GROUP BY Genre;
select *from Movies where RealeseDate>'1994-07-06'
select Director AS Directors ,[Name] from Movies
SELECT * 
FROM Movies
WHERE TicketPrice BETWEEN 9 AND 10;
select Genre, max(DurationMinute) from Movies GROUP BY Genre;
