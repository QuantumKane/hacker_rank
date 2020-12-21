
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
