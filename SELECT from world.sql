--1. Introduction
SELECT name, continent, population FROM World;

--2. Large Countries
SELECT name 
	FROM World 
WHERE population > 200000000;

--3.Per capita GDP
SELECT name, gdp/population  
	FROM World
WHERE population >= 200000000;

--4. South America In millions
SELECT name, population/1000000 
	FROM World
WHERE continent = 'South America';

--5. France, Germany, Italy
SELECT name, population 
	FROM World
WHERE name in ('France', 'Germany', 'Italy');

--6. United
SELECT name 
	FROM World
WHERE name LIKE '%United%';


--7. Two ways to be big
--Show the countries that are big by area or big by population. Show name, population and area.
SELECT name, population, area 
	FROM World
WHERE area >= 3000000 OR population >= 250000000;

--8. One or the other (but not both)
--Exclusive OR (XOR). Show the countries that are big by area (more than 3 million)
--	or big by population (more than 250 million) but not both. Show name, population and area.
SELECT name, population, area
	FROM World
WHERE (area >= 3000000 AND population < 250000000)
	OR (area < 3000000 AND population >= 250000000);

--9. Rounding
--For South America show population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
	FROM World
WHERE continent = 'South America';

--10. Trillion dollar economies
--Show per-capita GDP for the trillion dollar countries to the nearest $1000.
SELECT name, ROUND(gdp/population, -3)
	FROM World
WHERE gdp > 1000000000000;

--11. Name and capital have the same length
--Show the name and capital where the name and the capital have the same number of characters.
SELECT name, capital
	FROM World
WHERE LEN(name) = LEN(capital);

--12. Matching name and capital
--Show the name and the capital where the first letters of each match.
-- Don't include countries where the name and the capital are the same word.
SELECT name, capital
	FROM World
WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital;

--13. All the vowels
--Find the country that has all the vowels and no spaces in its name.
SELECT name
	FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %'