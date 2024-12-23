CREATE TABLE users (
    user_id INT,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255)
);
INSERT INTO users (user_id, name, email, password) VALUES
(1, 'Nitish', 'nitish@gmail.com', 'p252h'),
(3, 'Vartika', 'vartika@gmail.com', '9hu7j'),
(4, 'Ankit', 'ankit@gmail.com', 'lkko3'),
(5, 'Neha', 'neha@gmail.com', '3i7qm'),
(6, 'Anupama', 'anupama@gmail.com', '46rdw2'),
(7, 'Rishabh', 'rishabh@gmail.com', '4sw123');

select * from users;
CREATE TABLE restaurants (
    r_id INT,
    r_name VARCHAR(255),
    cuisine VARCHAR(255)
);

INSERT INTO restaurants VALUES
(1, 'dominos', 'Italian'),
(2, 'kfc', 'American'),
(3, 'box8', 'North Indian'),
(4, 'Dosa Plaza', 'South Indian'),
(5, 'China Town', 'Chinese');


CREATE TABLE food (
    f_id INT,
    f_name VARCHAR(255),
    type VARCHAR(255)
);

INSERT INTO food VALUES
(1, 'Non-veg Pizza', 'Non-veg'),
(2, 'Veg Pizza', 'Veg'),
(3, 'Choco Lava cake', 'Veg'),
(4, 'Chicken Wings', 'Non-veg'),
(5, 'Chicken Popcorn', 'Non-veg'),
(6, 'Rice Meal', 'Veg'),
(7, 'Roti meal', 'Veg'),
(8, 'Masala Dosa', 'Veg'),
(9, 'Rava Idli', 'Veg'),
(10, 'Schezwan Noodles', 'Veg'),
(11, 'Veg Manchurian', 'Veg');

select * from food;

CREATE TABLE menu1 (
    menu_id INT,
    r_id INT,
    f_id INT,
    price INT
);

INSERT INTO menu1 (menu_id, r_id, f_id, price) VALUES
(1, 1, 1, 450),
(2, 1, 2, 400),
(3, 1, 3, 100),
(4, 2, 3, 115),
(5, 2, 4, 230),
(6, 2, 5, 300),
(7, 3, 3, 80),
(8, 3, 6, 160),
(9, 3, 7, 140),
(10, 4, 6, 230),
(11, 4, 8, 180),
(12, 4, 9, 120),
(13, 5, 6, 250),
(14, 5, 10, 220),
(15, 5, 11, 180);

select * from menu1;

CREATE TABLE orders1 (
    order_id INT,
    user_id INT,
    r_id INT,
    amount INT,
    date DATE, 
    partner_id INT,
    delivery_time INT,
    delivery_rating INT,
    restaurant_rating INT
);

INSERT INTO orders1 (order_id, user_id, r_id, amount, date, partner_id, delivery_time, delivery_rating, restaurant_rating) VALUES
(1001, 1, 1, 550, '2022-05-10', 1, 25, 5, 3),
(1002, 1, 2, 415, '2022-05-26', 1, 19, 5, 2),
(1003, 1, 3, 240, '2022-06-15', 5, 29, 4, NULL),
(1004, 1, 3, 240, '2022-06-29', 4, 42, 3, 5),
(1005, 1, 3, 220, '2022-07-10', 1, 58, 1, 4),
(1006, 2, 1, 950, '2022-06-10', 2, 16, 5, NULL),
(1007, 2, 2, 530, '2022-06-23', 3, 60, 1, 5),
(1008, 2, 3, 240, '2022-07-07', 5, 33, 4, 5),
(1009, 2, 4, 300, '2022-07-17', 4, 41, 1, NULL),
(1010, 2, 5, 650, '2022-07-31', 1, 67, 1, 4),
(1011, 3, 1, 450, '2022-05-10', 2, 25, 3, 1),
(1012, 3, 4, 180, '2022-05-20', 5, 33, 4, 1),
(1013, 3, 2, 230, '2022-05-30', 4, 45, 3, NULL),
(1014, 3, 2, 230, '2022-06-11', 2, 55, 1, 2),
(1015, 3, 2, 230, '2022-06-22', 3, 21, 5, NULL),
(1016, 4, 4, 300, '2022-05-15', 3, 31, 5, 5),
(1017, 4, 4, 300, '2022-05-30', 1, 50, 1, NULL),
(1018, 4, 4, 400, '2022-06-15', 2, 40, 3, 5),
(1019, 4, 5, 400, '2022-06-30', 1, 70, 2, 4),
(1020, 4, 5, 400, '2022-07-15', 3, 26, 5, 3),
(1021, 5, 1, 550, '2022-07-01', 5, 22, 2, NULL),
(1022, 5, 1, 550, '2022-07-08', 1, 34, 5, 1),
(1023, 5, 2, 645, '2022-07-15', 4, 38, 5, 1),
(1024, 5, 2, 645, '2022-07-21', 2, 58, 2, 1),
(1025, 5, 2, 645, '2022-07-28', 2, 44, 4, NULL);

select * from orders1;

CREATE TABLE delivery_partners (
    partner_id INT,
    partner_name VARCHAR(50)
);

INSERT INTO delivery_partners (partner_id, partner_name) VALUES
(1, 'Suresh'),
(2, 'Amit'),
(3, 'Lokesh'),
(4, 'Kartik'),
(5, 'Gyandeep');

select * from delivery_partners;

CREATE TABLE order_details (
    id INT,
    order_id INT,
    f_id INT
);

INSERT INTO order_details (id, order_id, f_id) VALUES
(1, 1001, 1),
(2, 1001, 3),
(3, 1002, 4),
(4, 1002, 3),
(5, 1003, 6),
(6, 1003, 3),
(7, 1004, 6),
(8, 1004, 3),
(9, 1005, 7),
(10, 1005, 3),
(11, 1006, 1),
(12, 1006, 2),
(13, 1006, 3),
(14, 1007, 4),
(15, 1007, 3),
(16, 1008, 6),
(17, 1008, 3),
(18, 1009, 8),
(19, 1009, 9),
(20, 1010, 10),
(21, 1010, 11),
(22, 1010, 6),
(23, 1011, 1),
(24, 1012, 8),
(25, 1013, 4),
(26, 1014, 4),
(27, 1015, 4),
(28, 1016, 8),
(29, 1016, 9),
(30, 1017, 8),
(31, 1017, 9),
(32, 1018, 8),
(33, 1018, 9),
(34, 1019, 10),
(35, 1019, 11),
(36, 1020, 10),
(37, 1020, 11),
(38, 1021, 1),
(39, 1021, 3),
(40, 1022, 1),
(41, 1022, 3),
(42, 1023, 5),
(43, 1023, 3),
(44, 1024, 5),
(45, 1024, 3),
(46, 1025, 5),
(47, 1025, 3);

select * from order_details;

-- Find customers who have never ordered
SELECT 
    u.user_id, 
    u.name 
FROM 
    users u 
LEFT JOIN 
    orders1 o 
ON 
    u.user_id = o.user_id 
WHERE 
    o.order_id IS NULL;
    
-- Average Price/dish
SELECT 
    f.f_name, 
    AVG(m.price) AS avg_price 
FROM 
    food f 
JOIN 
    menu1 m 
ON 
    f.f_id = m.f_id 
GROUP BY 
    f.f_name;
    
-- Find the top restaurant in terms of the number of orders for a given month
SELECT 
    r.r_name, 
    COUNT(o.order_id) AS order_count 
FROM 
    restaurants r 
JOIN 
    orders1 o 
ON 
    r.r_id = o.r_id 
WHERE 
    DATE_FORMAT(o.date, '%Y-%m') = '2022-06' 
GROUP BY 
    r.r_name 
ORDER BY 
    order_count DESC ;
-- LIMIT 5;


-- Restaurants with monthly sales greater than 1000 in July 2022
SELECT 
    r.r_name, 
    SUM(o.amount) AS total_sales 
FROM 
    restaurants r 
JOIN 
    orders o 
ON 
    r.r_id = o.r_id 
WHERE 
    DATE_FORMAT(o.date, '%Y-%m') = '2022-07' 
GROUP BY 
    r.r_name 
HAVING 
    total_sales > 1000;
-- Show all orders with order details for a particular customer in a particular date range
-- For example, customer with user_id = 1 and date range from '2022-06-01' to '2022-06-30
SELECT 
    o.order_id, 
    o.date, 
    o.amount, 
    f.f_name 
FROM 
    orders1 o 
JOIN 
    order_details od 
ON 
    o.order_id = od.order_id 
JOIN 
    food f 
ON 
    od.f_id = f.f_id 
WHERE 
    o.user_id = 1 
AND 
    o.date BETWEEN '2022-06-01' AND '2022-06-30';
    
    -- Find restaurants with max repeated customers
    SELECT 
    r.r_name, 
    COUNT(DISTINCT o.user_id) AS repeated_customers 
FROM 
    restaurants r 
JOIN 
    orders o 
ON 
    r.r_id = o.r_id 
GROUP BY 
    r.r_name 
ORDER BY 
    repeated_customers DESC 
LIMIT 1;

-- Month over month revenue growth of Swiggy

WITH MonthlyRevenue AS (
    SELECT 
        DATE_FORMAT(date, '%Y-%m') AS month, 
        SUM(amount) AS revenue 
    FROM 
        orders 
    GROUP BY 
        DATE_FORMAT(date, '%Y-%m')
), RevenueGrowth AS (
    SELECT 
        month, 
        revenue, 
        LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue 
    FROM 
        MonthlyRevenue
)
SELECT 
    month, 
    revenue, 
    previous_month_revenue, 
    (revenue - previous_month_revenue) / previous_month_revenue * 100 AS revenue_growth 
FROM 
    RevenueGrowth 
WHERE 
    previous_month_revenue IS NOT NULL;
    
-- Customer — favourite food
WITH UserFoodCounts AS (
    SELECT 
        u.user_id, 
        u.name, 
        f.f_name, 
        COUNT(od.f_id) AS order_count 
    FROM 
        users u 
    JOIN 
        orders o 
    ON 
        u.user_id = o.user_id 
    JOIN 
        order_details od 
    ON 
        o.order_id = od.order_id 
    JOIN 
        food f 
    ON 
        od.f_id = f.f_id 
    GROUP BY 
        u.user_id, 
        u.name, 
        f.f_name
), RankedFoods AS (
    SELECT 
        user_id, 
        name, 
        f_name, 
        order_count,
        ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY order_count DESC) AS rn
    FROM 
        UserFoodCounts
)
SELECT 
    user_id, 
    name, 
    f_name AS favourite_food, 
    order_count 
FROM 
    RankedFoods 
WHERE 
    rn = 1;
    
-- Find the most loyal customers for all restaurant
WITH CustomerOrderCounts AS (
    SELECT 
        r.r_name, 
        u.user_id, 
        u.name, 
        COUNT(o.order_id) AS order_count 
    FROM 
        restaurants r 
    JOIN 
        orders o 
    ON 
        r.r_id = o.r_id 
    JOIN 
        users u 
    ON 
        o.user_id = u.user_id 
    GROUP BY 
        r.r_name, 
        u.user_id, 
        u.name
), RankedCustomers AS (
    SELECT 
        r_name, 
        user_id, 
        name, 
        order_count,
        ROW_NUMBER() OVER (PARTITION BY r_name ORDER BY order_count DESC) AS rn
    FROM 
        CustomerOrderCounts
)
SELECT 
    r_name, 
    user_id, 
    name, 
    order_count 
FROM 
    RankedCustomers 
WHERE 
    rn = 1;
    
-- Month-over-month revenue growth of a restaurant
-- For example, restaurant with r_id = 1
WITH MonthlyRevenue AS (
    SELECT 
        DATE_FORMAT(date, '%Y-%m') AS month, 
        SUM(amount) AS revenue 
    FROM 
        orders 
    WHERE 
        r_id = 1 
    GROUP BY 
        DATE_FORMAT(date, '%Y-%m')
), RevenueGrowth AS (
    SELECT 
        month, 
        revenue, 
        LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue 
    FROM 
        MonthlyRevenue
)
SELECT 
    month, 
    revenue, 
    previous_month_revenue, 
    (revenue - previous_month_revenue) / previous_month_revenue * 100 AS revenue_growth 
FROM 
    RevenueGrowth 
WHERE 
    previous_month_revenue IS NOT NULL;



