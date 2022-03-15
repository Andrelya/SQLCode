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
('350', '450', '10', '32', '24x', '1232', '9'),
('350', '500', '10', '32', '12x', '1260', '10'),
('980', '900', '40', '128', '40x', '1233', '11');
SELECT * FROM PC;

-- 1
UPDATE PC
SET ram = ram * 2;
SELECT * FROM PC;

-- 2
UPDATE PC
SET model = CASE 
WHEN model = 1232 
THEN 1245
WHEN model = 1233
THEN 1246
ELSE model
END;
SELECT * FROM PC;

-- 3
DELETE FROM PC
WHERE model=1260;
SELECT * FROM PC;

-- 4
SELECT 'Середня ціна = '+ Convert(AVG(price) AS CHAR(15))
FROM PC
WHERE cd >= '40x';

-- 5
SELECT 'Середня ціна = ', AVG(CASE WHEN model='1121'THEN price END) as '1121', AVG(CASE WHEN model='1245'THEN price END) AS '1245', AVG(CASE WHEN model='1246'THEN price END) AS '1246'
FROM PC
UNION
SELECT 'Середня швидкість =', AVG(CASE WHEN model='1121'THEN speed END), AVG(CASE WHEN model='1245'THEN speed END) , AVG(CASE WHEN model='1246'THEN speed END)
FROM PC
UNION
SELECT 'Середня ємність = ', AVG(CASE WHEN model='1121'THEN hd END), AVG(CASE WHEN model='1245'THEN hd END) , AVG(CASE WHEN model='1246'THEN hd END)
FROM PC
UNION
SELECT 'Середня ОП = ', AVG(CASE WHEN model='1121'THEN ram END), AVG(CASE WHEN model='1245'THEN ram END) , AVG(CASE WHEN model='1246'THEN ram END)
FROM PC;
SELECT * FROM PC;
