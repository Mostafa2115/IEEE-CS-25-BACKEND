-- First problem (Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN)
Select NAME from CITY where COUNTRYCODE ='JPN'

-- third problem (Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates)
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%';

-- fourth problem (Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates)
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u';

-- fifth problrm (Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates)
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%' AND CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u';

-- sixth problem (Query the average population for all cities in CITY, rounded down to the nearest integer)
select floor(avg(population)) from CITY;

-- seventh problem (Write a query to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022. Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending order based on the count of the messages)
SELECT sender_id, COUNT(message_id) AS message_count
FROM messages
WHERE sent_date BETWEEN '2022-08-01 00:00:00' AND '2022-08-31 23:59:59'
GROUP BY sender_id 
ORDER BY message_count desc
LIMIT 2;
