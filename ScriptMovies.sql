# Mostrar todos los registros de la tabla de movies.
SELECT
	*
FROM
	movies m ;

# Mostrar el nombre, apellido y rating de todos los actores.
SELECT
	a.first_name,
	a.last_name,
	a.rating
FROM
	actors a;

# Mostrar el título de todas las series y usar alias para que tanto el nombre de la tabla como el campo estén en español.
SELECT
	title AS titulo
FROM
	series s; 

# Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7.5.
SELECT 
	first_name,
	last_name
	#, rating
FROM
	actors a
WHERE
	rating >= 7.5; 

# Mostrar el título de las películas, el rating y los premios de las películas con un rating mayor a 7.5 y con más de dos premios.
SELECT
	title,
	rating,
	awards
FROM
	movies m
WHERE
	rating >= 7.5
	AND awards > 2;

# Mostrar el título de las películas y el rating ordenadas por rating en forma ascendente.
SELECT
	title,
	rating
FROM
	movies m
ORDER BY
	rating;

# Mostrar los títulos de las primeras tres películas en la base de datos.
SELECT
	title
FROM
	movies m
LIMIT 3;

# Mostrar el top 5 de las películas con mayor rating.
SELECT
	title,
	rating
FROM
	movies m
ORDER BY
	rating DESC
LIMIT 5;

# Listar los primeros 10 actores.
SELECT
	first_name ,
	last_name
FROM
	actors
LIMIT 10;

# Mostrar el título y rating de todas las películas cuyo título sea de Toy Story.
SELECT
	title,
	rating
FROM
	movies m
WHERE
	title LIKE '%Toy Story%';

# Mostrar a todos los actores cuyos nombres empiezan con Sam.
SELECT
	first_name,
	last_name
FROM
	actors
WHERE
	first_name LIKE 'Sam%';

# Mostrar el título de las películas que salieron entre el 2004 y 2008.
SELECT
	title,
	YEAR(release_date) AS release_year
FROM
	movies m
WHERE
	YEAR(release_date) BETWEEN '2004' AND '2008';

# Traer el título de las películas con el rating mayor a 3, con más de 1 premio y con fecha de lanzamiento entre el año 1988 al 2009. Ordenar los resultados por rating.
SELECT
	title,
	rating,
	awards,
	YEAR(release_date) AS release_year
FROM
	movies m
WHERE
	rating > 3
	AND awards > 1
	AND YEAR(release_date) BETWEEN 1988 AND 2009
ORDER BY
	rating DESC;

