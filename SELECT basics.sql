--1. Introducing the world table of countries
--Modify it to show the population of Germany
SELECT population FROM World WHERE name = 'Germany'

--2. Scandinavia
--Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population FROM World WHERE name IN ('Sweden', 'Norway', 'Denmark');

--3. Just the right size
SELECT name, area FROM World WHERE area BETWEEN 200000 AND 250000 