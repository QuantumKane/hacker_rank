
# 1. Query all columns for all American cities in the CITY table with populations larger than 100000

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
    AND POPULATION > 100000;
    
# 2. Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
    
SELECT name
FROM city
WHERE countrycode = 'USA'
    AND population > 120000;
    
    
# 3. Query all columns (attributes) for every row in the CITY table

SELECT *
FROM city;

# 4. Query all columns for a city in CITY with the ID 1661

SELECT *
FROM city
WHERE id = 1661;

# 5. Query all attributes of every Japanese city in the CITY table

SELECT *
FROM city
WHERE countrycode = 'JPN';

# 6. Query the names of all the Japanese cities in the CITY table

SELECT name
FROM city
WHERE countrycode = 'JPN';

# 7. Query a list of CITY and STATE from the STATION table

SELECT city, state
FROM station;

# 8. Query a list of CITY names from STATION for cities that have an even ID number

SELECT DISTINCT city
FROM station
WHERE mod(id, 2) = 0;

# 9. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table

SELECT COUNT(city) - COUNT(DISTINCT city)
FROM station;

# 10. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 

SELECT city, LENGTH(city) 
FROM station
ORDER BY LENGTH(city), city ASC
LIMIT 1;

SELECT city, LENGTH(city) 
FROM station
ORDER BY LENGTH(city) DESC
LIMIT 1;

# 11. Query the list of CITY names starting with vowels from STATION

SELECT DISTINCT city
FROM station
WHERE city LIKE 'a%'
    OR city LIKE 'e%'
    OR city LIKE 'i%'
    OR city LIKE 'o%'
    OR city LIKE 'u%';
    
# 12. Query the list of CITY names ending with vowels from STATION

SELECT DISTINCT city
FROM station
WHERE city LIKE '%a'
    OR city LIKE '%e'
    OR city LIKE '%i'
    OR city LIKE '%o'
    OR city LIKE '%u';

# 13. Query the list of CITY names from STATION which have vowels as both their first and last characters

SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[aeiou].*[aeiou]$';

# 14. Query the list of CITY names from STATION that do not start with vowels

SELECT DISTINCT city
FROM station
WHERE city NOT LIKE 'a%'
    AND city NOT LIKE 'e%'
    AND city NOT LIKE 'i%'
    AND city NOT LIKE 'o%'
    AND city NOT LIKE 'u%';
    
# 15. Query the list of CITY names from STATION that do not end with vowels

SELECT DISTINCT city
FROM station
WHERE city NOT LIKE '%a'
    AND city NOT LIKE '%e'
    AND city NOT LIKE '%i'
    AND city NOT LIKE '%o'
    AND city NOT LIKE '%u';
    
# 16. Query the list of CITY names from STATION that EITHER do not start with vowels OR do not end with vowels

SELECT DISTINCT city
FROM station 
WHERE city REGEXP '^[^aeiou]|[^aeiou]$'

# 17. Query the list of CITY names from STATION that do not start with vowels AND do not end with vowels

SELECT DISTINCT city
FROM station 
WHERE city REGEXP '^[^aeiouAEIOU].*[^aeiouAEIOU]$'

# 18. Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name

SELECT name
FROM students
WHERE marks > 75
ORDER BY RIGHT(name, 3), id ASC;

# 19. Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order. 

SELECT name 
FROM employee
ORDER BY name; 

# 20. Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'

SELECT SUM(CITY.POPULATION) 
FROM CITY, COUNTRY
WHERE CITY.COUNTRYCODE = COUNTRY.CODE 
    AND COUNTRY.CONTINENT = 'Asia';
    
# 21. Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

SELECT city.name
FROM city, country
WHERE city.countrycode = country.code
    AND country.continent = 'Africa'
    
# 22. Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population)

SELECT country.continent, FLOOR(AVG(city.population))
FROM city, country
WHERE city.countrycode = country.code
GROUP BY country.continent

# 23. Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. 

SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

# 24. Query a count of the number of cities in CITY having a Population larger than 100000

SELECT count(name)
FROM city 
WHERE population > 100000;

# 25. Query the total population of all cities in CITY where District is California

SELECT SUM(population) 
FROM city
WHERE district = 'California';

# 26. Query the average population of all cities in CITY where District is California

SELECT AVG(population) 
FROM city
WHERE district = 'California';

# 27. Query the average population for all cities in CITY, rounded down to the integer

SELECT FLOOR(AVG(population))
FROM city;

# 28. Query the sum of the populations for all Japanese cities in CITY.

SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN';

# 29. Query the difference between the maximum and minimum populations in CITY

SELECT (MAX(population) - MIN(population))
FROM city;

# 30. Write a query calculating the amount of error and round it up to the next integer.

SELECT CEIL(AVG(salary) - AVG(REPLACE(salary,'0',''))) 
FROM employees;

# 31. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings.

SELECT (salary * months) as earnings, COUNT(*) 
FROM employee 
GROUP BY 1 
ORDER BY earnings DESC limit 1;

# 32. Query the following two values from the STATION table:
# The sum of all values in LAT_N rounded to a scale of  decimal places.
# The sum of all values in LONG_W rounded to a scale of  decimal places.

SELECT ROUND(SUM(lat_n), 2) as lat, 
        ROUND(SUM(long_w), 2) as lon
FROM station;

# 33. Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 

SELECT ROUND(SUM(lat_n), 4)
FROM station
WHERE lat_n BETWEEN 38.7880 AND 137.2345;

# 34. Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345.

SELECT TRUNCATE(MAX(lat_n), 4)
FROM station
WHERE lat_n < 137.2345;

# 35. Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345

SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;

# 36.

SELECT ROUND(lat_n, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1;
