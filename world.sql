-- 1. What query would you run to get all the countries that speak Slovene? 
-- Your query should return the name of the country, language and language percentage.
--  Your query should arrange the result by language percentage in descending order. (1)languages
SELECT countries.name as country , languages.language as language ,languages.percentage as percentage
FROM countries
LEFT JOIN languages ON countries.id=languages.country_id
WHERE languages.language='Slovene'
ORDER BY languages.percentage DESC;

-- 2. What query would you run to display the total number of cities for each country? 
-- Your query should return the name of the country and the total number of cities. 
-- Your query should arrange the result by the number of cities in descending order. (3)
SELECT countries.name as country, count(cities.name) as number_of_cities
FROM countries
JOIN cities ON countries.id=cities.country_id
GROUP BY countries.name
ORDER BY count(cities.name) DESC;

-- 3. What query would you run to get all the cities in Mexico 
-- with a population of greater than 500,000? 
-- Your query should arrange the result by population in descending order. (1)
SELECT countries.name as country, cities.name as city_name,cities.population as population
FROM countries
JOIN cities ON countries.id=cities.country_id
WHERE cities.population > 500000 AND countries.name='Mexico'
ORDER BY cities.population DESC;

-- 4. What query would you run to get all languages in each 
-- country with a percentage greater than 89%? Your
--  query should arrange the result by percentage in descending order. (1)
SELECT countries.name as country_name, languages.language as language ,languages.percentage as percentages
FROM countries
LEFT JOIN languages ON countries.id=languages.country_id
WHERE languages.percentage>89
ORDER BY languages.percentage DESC;



-- What query would you run to get all the countries with
--  Surface Area below 501 and Population greaterthan 100,000?
SELECT name,surface_area, population FROM countries
WHERE surface_area <501 AND population >100000;


-- What query would you run to get all the cities of Argentina 
-- inside the Buenos Aires district and have the population greater than 500, 000? 
-- The query should return the Country Name, City Name, District and Population.
SELECT countries.name AS country_name, cities.name AS city_name, cities.district AS district, cities.population as population
 FROM  countries 
 JOIN cities ON countries.id=cities.country_id
 WHERE countries.name='Argentina ' AND cities.district='Buenos Aires' AND cities.population>500000;
 
 
 
 
--  What query would you run to get countries with only Constitutional Monarchy governments, 
--  with a capital greater than 200 and a life expectancy greater than 75 years? 
 
SELECT name,government_form,capital,life_expectancy 
FROM countries 
WHERE government_form='Constitutional Monarchy' AND capital>200 AND life_expectancy >75;


--  What query would you run to summarize the number of countries in each region? The
--  query should display the name of the region and the number of countries. Also,
--  the query should arrange the result by the number of countries in descending order.
SELECT count(name) as country_name, region FROM countries
group by region
ORDER BY count(name) DESC;

select * from cities;
select * from countries;








-- select name,population from cities
-- WHERE cities.population > 500000 
-- ORDER BY cities.population DESC;














