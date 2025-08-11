SELECT
	t.name,
	a.title,
	g.Name,
	UnitPrice
FROM
	Track t
JOIN Album a ON
	a.AlbumId = t.AlbumId
JOIN Genre g ON
	g.GenreId = t.GenreId
WHERE
	UnitPrice != 0.99
ORDER BY
	3 DESC,
	2 ASC,
	1 ASC;

select * from Album t order by AlbumId;
