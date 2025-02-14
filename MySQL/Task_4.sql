-- problem one(Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:-Equilateral: It's a triangle with 3 sides of equal length.-Isosceles: It's a triangle with 2 sides of equal length.-Scalene: It's a triangle with 3 sides of differing lengths.-Not A Triangle: The given values of A, B, and C don't form a triangle)
SELECT 
CASE WHEN A + B > C AND A + C > B AND B + C > A THEN 
  CASE WHEN A = B AND B = C THEN 'Equilateral'WHEN A = B OR B = C OR A = C THEN 'Isosceles'ELSE 'Scalene'END
ELSE 'Not A Triangle'END
FROM TRIANGLES;

-- problem five (Query the average population for all cities in CITY, rounded down to the nearest integer)
select floor(avg(POPULATION))
from CITY;

-- problem seven (Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.Write a query to help Eve)
SELECT CASE WHEN G.Grade < 8 THEN 'NULL' ELSE S.Name END, G.Grade, S.Marks
FROM Students S
JOIN Grades G ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY G.Grade DESC, S.Name;

