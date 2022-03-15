CREATE TABLE Product (price money, speed smallint, hd REAL, ram smallint, Cd VARCHAR(10), model VARCHAR(50), code int);

INSERT INTO Product VALUES
('600', '500', '5', '64', '12x', '1232', '1'),
('850', '750', '14', '128', '40x', '1121', '2'),
('600', '500', '5', '64', '12x', '1233', '3'),
('850', '600', '14', '128', '40x', '1121', '4'),
('850', '600', '8', '128', '40x', '1121', '5'),
('950', '750', '20', '128', '50x', '1233', '6'),
('400', '500', '10', '32', '12x', '1232', '7'),
('350', '450', '8', '64', '24x', '1232', '8'),
('350', '450', '10', '32', '24x', '1232', '9'),
('350', '500', '10', '32', '12x', '1260', '10'),
('980', '900', '40', '128', '40x', '1233', '11');
SELECT * FROM Product;

--1 ЗАвдання
--без дублікатів (1 раз model = price)
SELECT model, price
FROM Product
WHERE price < 400
UNION
SELECT model, price
FROM Product
WHERE price > 600

--з дублікатами
SELECT model, price
FROM Product
WHERE price < 400
UNION ALL
SELECT model, price
FROM Product
WHERE price > 600



-- 2 
CREATE TABLE PC (price money, speed smallint, hd REAL, ram smallint, Cd VARCHAR(10), model VARCHAR(50), code int);

INSERT INTO PC VALUES
('600', '500', '5', '64', '12x', '1232', '1'),
('850', '750', '14', '128', '40x', '1121', '2'),
('600', '500', '5', '64', '12x', '1233', '3'),
('850', '600', '14', '128', '40x', '1121', '4'),
('850', '600', '8', '128', '40x', '1121', '5'),
('950', '750', '20', '128', '50x', '1233', '6'),
('400', '500', '10', '32', '12x', '1232', '7'),
('350', '450', '8', '64', '24x', '1232', '8'),
('350', '450', '10', '32', '24x', '1232', '9');
SELECT * FROM PC;

SELECT model, code FROM Product
EXCEPT
SELECT model, code FROM PC
ORDER BY code ASC

SELECT model, code FROM Product
INTERSECT
SELECT model, code FROM PC
ORDER BY code ASC

-- 3 
SELECT code FROM (SELECT  model, price FROM Product EXCEPT SELECT code, model, price FROM PC) WHERE price > 600
SELECT code FROM (SELECT  code, price, model FROM Product EXCEPT SELECT code, model, price FROM PC) WHERE price > 600
