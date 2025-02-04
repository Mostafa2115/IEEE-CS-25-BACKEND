-- First problem (select all)
SELECT * FROM CITY;

-- Second problem (select by ID)
SELECT * FROM CITY WHERE ID=1661;

-- Third problem (select city and state where lat_n and long_w are int)
SELECT CITY,STATE
FROM STATION
WHERE LAT_N > 0 AND LONG_W > 0;
