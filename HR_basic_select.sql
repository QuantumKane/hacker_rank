
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

# 18. Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name

# This is my Christmas+ push