
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

# 10. 