-- problem one (Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA)
select * from CITY where POPULATION >100000 and COUNTRYCODE ='USA';

-- problem two (Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA)
select NAME from CITY where POPULATION > 120000 and COUNTRYCODE='USA';

-- problem three (Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN)
select * from CITY where COUNTRYCODE='JPN';

-- problem four (Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order)
select name from employee order by name ;

-- problem five (Write a query that prints a list of employee names for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id)
select name from employee where salary >2000 and months<10 order by employee_id;

-- problem six (Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters , secondary sort them by ascending ID.
select Name from STUDENTS where Marks >75 order by right(Name,3),ID ;

-- problem seven (parts_assembly table contains all parts currently in production, each at varying stages of the assembly process,An unfinished part is one that lacks a finish_date)
SELECT part,assembly_step FROM parts_assembly WHERE finish_date is NULL;
