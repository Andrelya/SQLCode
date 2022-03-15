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

-- 1
INSERT INTO Product VALUES
('350', '450', '10', '32', '24x', '1232', '9'),
('350', '500', '10', '32', '12x', '1260', '10'),
('980', '900', '40', '128', '40x', '1233', '11');

-- 3
SELECT hd, AVG(ram) as avg_ram, AVG(speed) AS avg_speed, AVG(price) AS avg_price
FROM Product
GROUP BY hd
ORDER By hd ASC

-- 4
SELECT (SELECT AVG(price) FROM Product WHERE hd = 14) - (SELECT AVG(price) FROM Product WHERE hd = 10) AS difference_price


-- 5
SELECT DISTINCT model, price
FROM Product
WHERE price > (SELECT AVG(price) FROM Product)
