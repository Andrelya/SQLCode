CREATE TABLE Product (price money, speed smallint, hd REAL, ram smallint, Cd VARCHAR(10), model VARCHAR(50), code int); --

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


-- 1
SELECT model, price, code
FROM Product
WHERE price BETWEEN 600 AND 900;

-- 2
SELECT price, model FROM Product
WHERE (ram >= 128) AND speed BETWEEN 600 AND 800
ORDER BY price ASC;

SELECT price, model FROM Product
WHERE (ram >= 128) AND speed BETWEEN 600 AND 800
ORDER BY price DESC;


-- 3
-- Середнє значення
SELECT AVG(price) AS PriceAvg1 FROM Product WHERE (speed <= 450);
SELECT AVG(price) AS PriceAvg2 FROM Product WHERE (speed BETWEEN 451 AND 600);
SELECT AVG(price) AS PriceAvg3 FROM Product WHERE (speed > 600);

-- Max
SELECT MAX(price) AS maxnumber1 FROM Product WHERE (speed <= 450);
SELECT MAX(price) AS maxnumber2 FROM Product WHERE (speed BETWEEN 451 AND 600);
SELECT MAX(price) AS maxnumber3 FROM Product WHERE (speed > 600);

-- Min
SELECT MAX(price) AS minnumber1 FROM Product WHERE (speed <= 450);
SELECT MAX(price) AS minnumber2 FROM Product WHERE (speed BETWEEN 451 AND 600);
SELECT MAX(price) AS minnumber3 FROM Product WHERE (speed > 600);
