CREATE SCHEMA  cars;
use cars;

-- READ_DATA --
SELECT * FROM cars.`carmarket`;
-- total counts to get total data records--
SELECT COUNT(*) FROM cars.`carmarket`;

-- HOW MANY CARS WILL BE AVILABLE IN 2023 --

SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR=2023;

-- HOW MANY CARS WILL BE AVILABLE IN 2020 2021 2023 --

SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR=2020;#74
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR=2021;#7
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR=2022;#7
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR IN (2020,2021,2022) group by YEAR;

-- TOTAL ALL CARS BY YEAR --

SELECT YEAR, COUNT(*) FROM cars.`carmarket` group by YEAR;

-- HOW MANY DISEL CARS WILL BE AVILABLE IN 2020 --

SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR=2020 AND FUEL = "DIESEL";

-- HOW MANY PETROL CARS WILL BE AVILABLE IN 2020 --

SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR=2020 AND FUEL = "PETROL";

-- PRINT ALL THE FUEL CARS (DIESEL PETROL AND CNG)BY YEAR --
SELECT YEAR, COUNT(*) FROM cars.`carmarket` WHERE FUEL = "DIESEL" group by YEAR;
SELECT YEAR, COUNT(*) FROM cars.`carmarket` WHERE FUEL = "PETROL" group by YEAR;
SELECT YEAR, COUNT(*) FROM cars.`carmarket` WHERE FUEL = "CNG" group by YEAR;

-- WHICH YEAR HAD MORE THEN 100 IN YEARS YEARS --
SELECT YEAR, COUNT(*) FROM cars.`carmarket` group by YEAR having COUNT(*)>100;

-- WHICH YEAR HAD LESS THEN 50 IN YEARS --
SELECT YEAR, COUNT(*) FROM cars.`carmarket` group by YEAR having COUNT(*)<50;

-- ALL CARS COUNT DETAILS BETWEEN 2015 TO 2023 COMPLEATE LIST --
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR BETWEEN 2015 AND 2023;

-- ALL CARS COUNT DETAILS BETWEEN 2010 TO 2020 COMPLEATE LIST --
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR BETWEEN 2010 AND 2020;

-- ALL CARS DETAILS OF 2010 COMPLEATE LIST --
SELECT*FROM cars.`carmarket` WHERE YEAR = 2010;

-- ALL CARS DETAILS BETWEEN 2015 TO 2023 COMPLEATE LIST --
SELECT*FROM cars.`carmarket` WHERE YEAR BETWEEN 2015 AND 2023;

-- ALL CARS DETAILS BETWEEN 2010 TO 2020 COMPLEATE LIST --
SELECT*FROM cars.`carmarket` WHERE YEAR BETWEEN 2010 AND 2020;

-- How many cars were available in 2019?--
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2019;

-- How many cars were available in 2010 and had an automatic transmission?--
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2010 AND TRANSMISSION = 'Automatic';

-- CARS ACCORDING SELLER TYPE  in 2010? --
SELECT SELLER_TYPE, COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2016 GROUP BY seller_type;

-- How many cars were available in 2010 according to the seller type (Individual or Dealer)? --
SELECT SELLER_TYPE, COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2010 GROUP BY SELLER_TYPE;

-- How many cars have a selling price greater than 10 lakhs in 2016?
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2016 AND SELLING_PRICE > 1000000;

-- What is the average mileage of cars in 2022? --
SELECT AVG(CAST(SUBSTRING(MILEAGE, 1, LENGTH(MILEAGE) - 4) AS DECIMAL(5,2))) FROM cars.`carmarket` WHERE YEAR = 2022;

-- How many cars are available in each owner category in 2015? --
SELECT OWNER, COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2015 GROUP BY OWNER;

-- How many cars are available with more than 5 seats and priced below 5 lakhs in 2017?--
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2017 AND SEATS > 5 AND SELLING_PRICE < 500000;

-- What is the average selling price of diesel cars in 2019?--
SELECT AVG(SELLING_PRICE) FROM cars.`carmarket` WHERE YEAR = 2019 AND FUEL = 'DIESEL';

-- What is the most common fuel type in 2020?--
SELECT FUEL, COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2020 GROUP BY FUEL ORDER BY COUNT(*) DESC LIMIT 1;

-- How many cars have a mileage greater than 20 km/l and are available in 2017? --
SELECT COUNT(*) FROM cars.`carmarket` WHERE YEAR = 2017 AND CAST(SUBSTRING(MILEAGE, 1, LENGTH(MILEAGE) - 4) AS DECIMAL(5,2)) > 20;

-- INSERTION --
INSERT INTO cars.`carmarket` (Name, Year, Selling_Price, Km_Driven, Fuel, Seller_Type, Transmission, Owner, Mileage, Engine, Max_Power, Torque, Seats)
VALUES ('New Car', 2023, 800000, 5000, 'Petrol', 'Individual', 'Manual', 'First Owner', '18.5 km/l', '1498 CC', '120 bhp', '145 Nm', 5);

-- the manager said to the employee All cars details between 2015 to 2023 we need complete list --
select * from carmarket where year between 2015 and 2023;

-- End
