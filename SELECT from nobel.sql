--1. Winners from 1950
SELECT yr, subject, winner FROM nobel
WHERE yr = 1950;

--2. 1962 Literature
SELECT winner FROM nobel
WHERE yr = 1962 AND subject = 'Literature';

--3. Albert Einstein
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein';

--4. Recent Peace Prizes
SELECT winner FROm nobel
WHERE subject = 'Peace' and yr >= 2000;

--5. Literature in the 1980's
SELECT * FROM nobel
WHERE yr between 1980 AND 1989 and subject = 'Literature';

--6. Only Presidents
SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

--7. John
SELEcT winner FROM nobel
WHERE winner like 'John%';

--8. Chemistry and Physics from different years
-- Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
SELECT * FROM nobel
WHERE (subject = 'Physics' AND yr = 1980 ) OR (subject = 'Chemistry' AND yr = 1984);

--9. Exclude Chemists and Medics
-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT * FROM nobel
WHERE subject not in ('Chemistry', 'Medicine') and yr = 1980;

--10. Early Medicine, Late Literature
SELECT * FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004);

--11. Umlaut
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG';

--12. Apostrophe
SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';

--13. Knights of the realm
-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
SELECT winner, yr, subject FROM nobel
WHERE winner like 'Sir%'
ORDER BY yr DESC, winner ASC;

--14. Chemistry and Physics last
-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject 
FROM nobel 
WHERE yr = 1984 
ORDER BY CASE WHEN subject IN ('Chemistry', 'Physics') THEN 2 ELSE 1 END, subject, winner;
