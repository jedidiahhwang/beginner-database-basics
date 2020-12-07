-- TABLE 1: PERSON

-- CREATE TABLE person (
--     person_id SERIAL PRIMARY KEY, 
--     name TEXT, age INTEGER, 
--     height INTEGER, 
--     city TEXT, 
--     favorite_color TEXT 
-- );

-- INSERT INTO person (name, age, height, city, favorite_color)
-- VALUES
-- 	('Guy', 25, 190, 'Salt Lake City', 'Blue'),
--   ('Dude', 24, 180, 'Denver', 'Black'),
--   ('Gal', 40, 150, 'Seattle', 'Red'),
--   ('Bro', 26, 170, 'Los Angeles', 'Orange'),
--   ('Miss', 39, 170, 'New York', 'Purple');

-- SELECT * FROM person ORDER BY height DESC;

-- SELECT * FROM person ORDER BY height ASC;

-- SELECT * FROM person ORDER BY age DESC;

-- SELECT * FROM person WHERE age > 20;

-- SELECT * FROM person WHERE age = 18;

-- SELECT * FROM person WHERE age < 20 AND age > 30;

-- SELECT * FROM person WHERE age != 27;

-- SELECT * FROM person WHERE favorite_color != 'Red';

-- SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- SELECT * FROM person WHERE favorite_color != 'Orange' AND favorite_color != 'Green';

-- SELECT * FROM person WHERE favorite_color IN('Orange', 'Green', 'Blue');

-- SELECT * FROM person WHERE favorite_color IN('Yellow', 'Purple');




-- TABLE 2: ORDERS

-- CREATE TABLE orders (
--   order_id SERIAL PRIMARY KEY,
--   person_id INTEGER,
--   product_name TEXT,
--   product_price FLOAT,
--   quantity INTEGER
-- );

-- INSERT INTO orders (person_id, product_name, product_price, quantity)
-- VALUES
-- 	(0, '16 inch MacBook Pro', 2500, 1),
--   (1, 'iPhone 12 Pro', 1100, 2),
--   (2, 'M1 Mac Mini', 900, 1),
--   (3, 'Mac Pro', 50000, 5),
--   (1, 'Airpods Pro', 250, 1);

-- SELECT * FROM orders ORDER BY person_id ASC;

-- SELECT SUM(quantity) FROM orders;

-- SELECT SUM(product_price * quantity) FROM orders;

-- SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2; 




-- TABLE 3: ARTIST

-- INSERT INTO artist (name)
-- VALUES
-- 	('Kendrick Lamar'),
--   ('Anderson .Paak'),
--   ('Frank Ocean');

-- SELECT * FROM artist ORDER BY name DESC LIMIT 10;

-- SELECT * FROM artist ORDER BY name ASC LIMIT 5;

-- REVIEW: % indicates it has to start with Black (and whatever afterwards)
-- SELECT * FROM artist WHERE name LIKE 'Black%';

-- REVIEW: % before and after means anything before and after Black
-- SELECT * FROM artist WHERE name LIKE '%Black%';




-- TABLE 4: EMPLOYEE

-- SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- NOTE: MAX(birth_date) means the newest or "biggest" birth date
-- SELECT MAX(birth_date) FROM employee;

-- SELECT MIN(birth_date) FROM employee;

-- NOTE: This is assuming we don't know Nancy's employee_id
-- SELECT employee_id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards';
-- SELECT * FROM employee WHERE reports_to = 2;
  
--   SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';




-- TABLE 5: INVOICE

-- SELECT * FROM invoice;

-- SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- SELECT MAX(total) FROM invoice;

-- SELECT MIN(total) FROM invoice;

-- SELECT * FROM invoice WHERE total > 5;

-- SELECT COUNT(*) FROM invoice WHERE total < 5;

-- SELECT COUNT(*) FROM invoice WHERE billing_state IN('CA', 'TX', 'AZ');

-- SELECT AVG(total) FROM invoice;

-- SELECT SUM(total) FROM invoice;

