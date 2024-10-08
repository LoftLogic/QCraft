CREATE TABLE geographic (
    city_name TEXT,
    county TEXT,
    region TEXT
);


CREATE TABLE location (
    restaurant_id BIGINT,
    house_number BIGINT,
    street_name TEXT,
    city_name TEXT
);


CREATE TABLE restaurant (
    id BIGINT,
    name TEXT,
    food_type TEXT,
    city_name TEXT,
    rating real
);


INSERT INTO geographic (city_name, county, region) VALUES
('Los Angeles', 'Los Angeles', 'California'),
('New York', 'New York', 'New York'),
('San Francisco', 'San Francisco', 'California'),
('Miami', 'Miami-Dade', 'Florida'),
('Chicago', 'Cook', 'Illinois')
;

INSERT INTO location (restaurant_id, house_number, street_name, city_name) VALUES
(1, 123, 'Main St', 'Los Angeles'),
(2, 456, 'Maple Ave', 'Los Angeles'),
(3, 789, 'Oak St', 'Los Angeles'),
(4, 321, 'Elm St', 'New York'),
(5, 654, 'Pine Ave', 'New York'),
(6, 123, 'Pine Ave', 'New York'),
(7, 12, 'Market St', 'San Francisco'),
(8, 34, 'Mission St', 'San Francisco'),
(9, 56, 'Valencia St', 'San Francisco'),
(10, 78, 'Ocean Dr', 'Miami'),
(11, 90, 'Biscayne Rd', 'Miami')
;

INSERT INTO restaurant (id, rating, name, food_type, city_name) VALUES
(1, 4.5, 'The Pasta House', 'Italian', 'Los Angeles'),
(2, 3.8, 'The Burger Joint', 'American', 'Los Angeles'),
(3, 4.2, 'The Sushi Bar', 'Japanese', 'Los Angeles'),
(4, 4.7, 'The Pizza Place', 'Italian', 'New York'),
(5, 3.9, 'The Steakhouse', 'American', 'New York'),
(6, 4.3, 'The Ramen Shop', 'Japanese', 'New York'),
(7, 4.1, 'The Tacos & Burritos', 'Mexican', 'San Francisco'),
(8, 4.6, 'The Vegan Cafe', 'Vegan', 'San Francisco'),
(9, 3.7, 'The BBQ Joint', 'American', 'San Francisco'),
(10, 4.4, 'The Seafood Shack', 'Seafood', 'Miami'),
(11, 4.6, 'The Seafood Shack', 'Seafood', 'Miami')
;



