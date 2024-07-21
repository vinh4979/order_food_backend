#--- create database order_food ---#

#-- CREATE DATABASE order_food_DB; 
#-- use order_food_DB;

#--- create table order_food ---#

# Create table user
CREATE TABLE users(
	user_id INT PRIMARY KEY AUTO_INCREMENT, 
	full_name VARCHAR(100), 
	email VARCHAR(100), 
	pass_word VARCHAR(100)
) 


#-- Create table restaurant
CREATE TABLE restaurants(
	res_id INT PRIMARY KEY AUTO_INCREMENT, 
	res_name VARCHAR(255), 
	image VARCHAR(255), 
	decs VARCHAR(255)
)


# create table food_type 
CREATE TABLE food_type(
	type_id INT PRIMARY KEY AUTO_INCREMENT, 
	type_name VARCHAR(100)
)


# create table food 
CREATE TABLE foods(
	food_id INT PRIMARY KEY AUTO_INCREMENT, 
	food_name VARCHAR(100), 
	image VARCHAR(255), 
	price FLOAT, 
	decs VARCHAR(255), 
	type_id INT, 
	FOREIGN KEY (type_id) REFERENCES food_type(type_id)
)



# create table sub_food
CREATE TABLE sub_food(
	sub_id INT PRIMARY KEY AUTO_INCREMENT, 
	sub_name VARCHAR(100), 
	sub_price FLOAT, 
	food_id INT, 
	FOREIGN KEY (food_id) REFERENCES foods(food_id)
)


# create table order 
CREATE TABLE orders(
	user_id INT, 
	FOREIGN KEY (user_id) REFERENCES users(user_id), 
	food_id INT, 
	FOREIGN KEY (food_id) REFERENCES foods(food_id),
	amount  INT, 
	code_ VARCHAR(255), 
	arr_sub_id VARCHAR(255)		
)


#create table rate_res
CREATE TABLE rate_res(
	user_id INT, 
	food_id INT, 
	amount  INT, 
	date_rate DATE,
	FOREIGN KEY (user_id) REFERENCES users(user_id), 
	FOREIGN KEY (food_id) REFERENCES foods(food_id)
)

#create table like_res
CREATE TABLE like_res(
	user_id INT, 
	res_id INT, 
	date_like DATE,
	FOREIGN KEY (user_id) REFERENCES users(user_id), 
	FOREIGN KEY (res_id) REFERENCES restaurants(res_id)
)



#---ínsert data------

#users
INSERT INTO users (full_name, email, pass_word) VALUES
('John Doe', 'john.doe@example.com', 'password123'),
('Alice Smith', 'alice.smith@example.com', 'securePassword'),
('Michael Johnson', 'michael.johnson@example.com', 'qwerty!@#'),
('Emily Brown', 'emily.brown@example.com', 'p@$$w0rd'),
('Daniel Wilson', 'daniel.wilson@example.com', 'strongPassword'),
('Jessica Martinez', 'jessica.martinez@example.com', 'mySecret123'),
('Matthew Davis', 'matthew.davis@example.com', 'password!'),
('Sarah Garcia', 'sarah.garcia@example.com', 'securePassword!'),
('Christopher Rodriguez', 'christopher.rodriguez@example.com', '12345678'),
('Ashley Wilson', 'ashley.wilson@example.com', 'password123!'),
('James Taylor', 'james.taylor@example.com', 'ilovecoding'),
('Elizabeth Anderson', 'elizabeth.anderson@example.com', 'codingisfun'),
('Ryan Thomas', 'ryan.thomas@example.com', 'P@$$w0rd'),
('Olivia Moore', 'olivia.moore@example.com', 'letmein!'),
('David Jackson', 'david.jackson@example.com', 'abc123'),
('Sophia White', 'sophia.white@example.com', 'Password!'),
('Andrew Thompson', 'andrew.thompson@example.com', 'thompson2023'),
('Isabella Clark', 'isabella.clark@example.com', 'clarkisabella'),
('Logan Harris', 'logan.harris@example.com', 'HarrisLogan123'),
('Mia Lewis', 'mia.lewis@example.com', 'lewismia456');


# type_id
INSERT INTO food_type (type_name) VALUES
('Burger'),
('Pizza'),
('Salad'),
('Sushi'),
('Pasta'),
('Seafood'),
('Stir-Fry'),
('BBQ'),
('Mexican'),
('Dessert');


#foods
INSERT INTO foods (food_name, image, price, decs, type_id) VALUES
('Classic Burger', 'classic_burger.jpg', 6.99, 'Juicy beef patty with lettuce, tomato, and pickles in a sesame seed bun.', 1),
('Pepperoni Pizza', 'pepperoni_pizza.jpg', 9.99, 'Pizza topped with pepperoni slices and mozzarella cheese.', 2),
('Caesar Salad', 'caesar_salad.jpg', 7.49, 'Romaine lettuce with Caesar dressing, croutons, and parmesan cheese.', 3),
('Sashimi Platter', 'sashimi_platter.jpg', 15.99, 'Assortment of fresh raw fish slices served with soy sauce and wasabi.', 4),
('Spaghetti Carbonara', 'spaghetti_carbonara.jpg', 10.99, 'Pasta with creamy sauce made from eggs, cheese, pancetta, and black pepper.', 5),
('Grilled Salmon', 'grilled_salmon.jpg', 12.99, 'Grilled salmon fillet served with steamed vegetables and lemon butter sauce.', 6),
('Chicken Teriyaki Stir-Fry', 'teriyaki_stir_fry.jpg', 9.99, 'Chicken and mixed vegetables stir-fried in teriyaki sauce, served over rice.', 7),
('BBQ Ribs', 'bbq_ribs.jpg', 14.99, 'Slow-cooked pork ribs basted in tangy BBQ sauce, served with coleslaw and fries.', 8),
('Taco Plate', 'taco_plate.jpg', 11.49, 'Platter with tacos filled with your choice of beef, chicken, or fish, served with rice and beans.', 9),
('Chocolate Cake', 'chocolate_cake.jpg', 5.99, 'Rich and moist chocolate cake topped with chocolate icing and sprinkles.', 10),
('Cheeseburger', 'cheeseburger.jpg', 6.49, 'Beef patty with melted cheese, lettuce, tomato, and pickles in a toasted bun.', 1),
('Vegetarian Pizza', 'vegetarian_pizza.jpg', 10.99, 'Pizza topped with mushrooms, bell peppers, onions, olives, and mozzarella cheese.', 2),
('Greek Salad', 'greek_salad.jpg', 6.99, 'Fresh lettuce, tomatoes, cucumbers, olives, and feta cheese with Greek dressing.', 3),
('California Roll', 'california_roll.jpg', 8.99, 'Sushi roll filled with crab, avocado, cucumber, and tobiko.', 4),
('Lasagna', 'lasagna.jpg', 11.99, 'Layers of pasta with meat sauce, ricotta cheese, and mozzarella cheese baked to perfection.', 5),
('Shrimp Scampi', 'shrimp_scampi.jpg', 13.99, 'Shrimp sautéed in garlic butter sauce served over linguine pasta.', 6),
('Beef Stir-Fry', 'beef_stir_fry.jpg', 9.49, 'Sliced beef and vegetables stir-fried in a savory sauce, served over steamed rice.', 7),
('Pulled Pork Sandwich', 'pulled_pork_sandwich.jpg', 8.99, 'Slow-cooked pulled pork with BBQ sauce on a toasted bun, served with coleslaw.', 8),
('Enchiladas', 'enchiladas.jpg', 10.49, 'Corn tortillas filled with chicken or beef, topped with enchilada sauce and cheese.', 9),
('Cheesecake', 'cheesecake.jpg', 7.99, 'Creamy cheesecake with a graham cracker crust, topped with strawberry sauce.', 10);

#sub_food
INSERT INTO sub_food (sub_name, sub_price, food_id) VALUES
('Sweet Potato Fries', 4.49, 21),
('Onion Rings', 3.99, 21),
('Bacon Cheese Fries', 5.99, 21),
('Garlic Breadsticks', 2.49, 22),
('Greek Pizza', 12.49, 22),
('Spinach Artichoke Dip', 6.99, 22),
('Mediterranean Salad', 7.49, 23),
('Grilled Chicken Caesar', 8.99, 23),
('Hummus with Pita', 4.99, 23),
('Tuna Roll', 9.99, 24),
('Salmon Avocado Roll', 11.99, 24),
('Tempura Shrimp Roll', 10.99, 24),
('Garlic Bread', 1.99, 25),
('Side Salad', 3.49, 25),
('Meatball Sliders', 5.99, 25),
('Garlic Bread', 2.49, 26),
('Caesar Salad', 4.99, 26),
('Lemon Butter Asparagus', 3.99, 26),
('Spring Rolls', 4.49, 27),
('Thai Basil Chicken', 8.49, 27),
('Pineapple Fried Rice', 6.99, 27),
('Sweet Potato Fries', 3.99, 28),
('Cole Slaw', 2.49, 28),
('Cornbread Muffin', 1.99, 28),
('Mexican Rice', 2.99, 29),
('Refried Beans', 2.49, 29),
('Tortilla Chips with Salsa', 1.99, 29),
('Strawberry Cheesecake', 4.99, 30),
('Blueberry Cheesecake', 4.99, 30),
('Oreo Cheesecake', 4.99, 30),
('Buffalo Wings', 6.99, 31),
('Loaded Nachos', 8.49, 31),
('Quesadilla', 7.99, 31),
('Chicken Wings', 7.99, 32),
('Buffalo Chicken Salad', 9.49, 32),
('Fried Pickles', 5.99, 32),
('Garlic Bread', 2.49, 33),
('Caesar Salad', 4.99, 33),
('Tomato Basil Soup', 3.99, 33),
('Eggplant Parmesan', 10.49, 34),
('Fettuccine Alfredo', 11.49, 34),
('Minestrone Soup', 4.99, 34),
('Garlic Bread', 1.99, 35),
('Caprese Salad', 6.99, 35),
('Bruschetta', 3.99, 35),
('Sweet Potato Fries', 4.49, 36),
('Onion Rings', 3.99, 36),
('Bacon Cheese Fries', 5.99, 36),
('Garlic Breadsticks', 2.49, 37),
('Greek Pizza', 12.49, 37),
('Spinach Artichoke Dip', 6.99, 37),
('Mediterranean Salad', 7.49, 38),
('Grilled Chicken Caesar', 8.99, 38),
('Hummus with Pita', 4.99, 38),
('Tuna Roll', 9.99, 39),
('Salmon Avocado Roll', 11.99, 39),
('Tempura Shrimp Roll', 10.99, 39),
('Garlic Bread', 1.99, 40),
('Side Salad', 3.49, 40),
('Meatball Sliders', 5.99, 40);

#restaurants
INSERT INTO restaurants (res_name, image, decs) VALUES
('The Rusty Spoon', 'rusty_spoon.jpg', 'Cozy spot serving comfort food and craft beers.'),
('Sunny Side Cafe', 'sunny_side_cafe.jpg', 'Family-friendly diner with a sunny atmosphere.'),
('Green Leaf Bistro', 'green_leaf_bistro.jpg', 'Farm-to-table restaurant focusing on fresh ingredients.'),
('Ocean View Grill', 'ocean_view_grill.jpg', 'Seafood restaurant with a view of the ocean.'),
('Mama Mia Trattoria', 'mama_mia_trattoria.jpg', 'Authentic Italian cuisine in a casual setting.'),
('Spice Junction', 'spice_junction.jpg', 'Indian restaurant known for its flavorful dishes.'),
('Tokyo Sushi Bar', 'tokyo_sushi_bar.jpg', 'Japanese sushi and sashimi served in an elegant setting.'),
('El Ranchero', 'el_ranchero.jpg', 'Mexican restaurant offering traditional dishes and margaritas.'),
('Peking Duck House', 'peking_duck_house.jpg', 'Chinese restaurant specializing in Peking duck.'),
('Thai Orchid', 'thai_orchid.jpg', 'Thai restaurant featuring spicy and aromatic dishes.'),
('The Steakhouse', 'the_steakhouse.jpg', 'Classic steakhouse with a cozy ambiance.'),
('Casa de Tapas', 'casa_de_tapas.jpg', 'Spanish tapas bar with a wide selection of small plates.'),
('Le Parisien', 'le_parisien.jpg', 'French bistro offering gourmet dishes and fine wines.'),
('Zen Garden', 'zen_garden.jpg', 'Vegetarian restaurant with a serene garden atmosphere.'),
('BBQ Pit Stop', 'bbq_pit_stop.jpg', 'Barbecue joint known for its smoked meats and ribs.'),
('The Noodle House', 'the_noodle_house.jpg', 'Asian noodle dishes served in a casual setting.'),
('Fresh Catch Seafood', 'fresh_catch_seafood.jpg', 'Fresh seafood restaurant with daily catches.'),
('Fusion Street', 'fusion_street.jpg', 'Restaurant blending flavors from around the world.'),
('Burger Joint', 'burger_joint.jpg', 'Casual spot specializing in gourmet burgers.'),
('La Dolce Vita', 'la_dolce_vita.jpg', 'Italian gelato and dessert cafe.'),
('Sunset Grill', 'sunset_grill.jpg', 'Beachside grill with a focus on grilled seafood and steaks.'),
('Ramen House', 'ramen_house.jpg', 'Japanese ramen noodle shop with authentic broth.'),
('Sabor Latino', 'sabor_latino.jpg', 'Latin American restaurant with vibrant flavors.'),
('The Veggie Patch', 'the_veggie_patch.jpg', 'Vegetarian and vegan dishes in a cozy setting.'),
('Taste of India', 'taste_of_india.jpg', 'Indian restaurant offering traditional curries and tandoori.'),
('Pho Saigon', 'pho_saigon.jpg', 'Vietnamese restaurant known for its pho and spring rolls.'),
('Ciao Bella', 'ciao_bella.jpg', 'Italian trattoria with a warm and inviting atmosphere.'),
('The Grill House', 'the_grill_house.jpg', 'Grill restaurant specializing in steaks and barbecue.'),
('Wok Star', 'wok_star.jpg', 'Chinese wok dishes made with fresh ingredients.'),
('Margarita Villa', 'margarita_villa.jpg', 'Mexican restaurant and tequila bar with a festive vibe.');

#orders
INSERT INTO orders (user_id, food_id, amount, code_, arr_sub_id) VALUES
(5, 21, 2, 'ORD202301', '[1, 5, 10]'),
(12, 26, 1, 'ORD202302', '[12, 20]'),
(5, 38, 3, 'ORD202303', '[3, 14, 25]'),
(7, 23, 2, 'ORD202304', '[8, 16]'),
(3, 30, 1, 'ORD202305', '[2]'),
(15, 35, 4, 'ORD202306', '[6, 18, 22, 30]'),
(9, 24, 2, 'ORD202307', '[7, 19]'),
(4, 29, 1, 'ORD202308', '[11]'),
(10, 40, 3, 'ORD202309', '[15, 23, 29]'),
(1, 22, 2, 'ORD202310', '[4, 13]'),
(11, 28, 1, 'ORD202311', '[9]'),
(6, 25, 4, 'ORD202312', '[17, 21, 26, 28]'),
(10, 39, 2, 'ORD202313', '[24, 27]'),
(4, 37, 1, 'ORD202314', '[31]'),
(2, 21, 3, 'ORD202315', '[32, 33, 34]'),
(14, 34, 2, 'ORD202316', '[35, 36]'),
(8, 27, 1, 'ORD202317', '[37]'),
(5, 40, 4, 'ORD202318', '[38, 39, 40, 41]'),
(13, 31, 2, 'ORD202319', '[42, 43]'),
(16, 36, 1, 'ORD202320', '[44]'),
(5, 21, 3, 'ORD202321', '[45, 46, 47]'),
(12, 26, 2, 'ORD202322', '[48, 49]'),
(10, 38, 1, 'ORD202323', '[50]'),
(7, 23, 4, 'ORD202324', '[51, 52, 53, 54]'),
(3, 30, 2, 'ORD202325', '[55, 56]'),
(15, 35, 1, 'ORD202326', '[57]'),
(9, 24, 3, 'ORD202327', '[58, 59, 60]'),
(4, 29, 2, 'ORD202328', '[1, 3]'),
(5, 40, 1, 'ORD202329', '[5]'),
(1, 22, 4, 'ORD202330', '[7, 9, 11, 13]');

# rate-res
INSERT INTO rate_res (user_id, food_id, amount, date_rate) VALUES
(5, 21, 4, '2023-01-01'),
(12, 26, 5, '2023-01-02'),
(5, 38, 3, '2023-01-03'),
(7, 23, 4, '2023-01-04'),
(3, 30, 2, '2023-01-05'),
(15, 35, 5, '2023-01-06'),
(9, 24, 3, '2023-01-07'),
(4, 29, 4, '2023-01-08'),
(20, 40, 5, '2023-01-09'),
(1, 22, 3, '2023-01-10'),
(11, 28, 4, '2023-01-11'),
(6, 25, 5, '2023-01-12'),
(10, 39, 2, '2023-01-13'),
(5, 37, 3, '2023-01-14'),
(2, 21, 4, '2023-01-15'),
(14, 34, 5, '2023-01-16'),
(8, 27, 3, '2023-01-17'),
(3, 40, 4, '2023-01-18'),
(13, 31, 2, '2023-01-19'),
(16, 36, 4, '2023-01-20'),
(5, 21, 5, '2023-01-21'),
(12, 26, 3, '2023-01-22'),
(3, 38, 4, '2023-01-23'),
(7, 23, 5, '2023-01-24'),
(3, 30, 3, '2023-01-25'),
(15, 35, 4, '2023-01-26'),
(9, 24, 5, '2023-01-27'),
(4, 29, 3, '2023-01-28'),
(5, 40, 4, '2023-01-29'),
(1, 22, 5, '2023-01-30');

#like_res
INSERT INTO like_res (user_id, res_id, date_like) VALUES
(5, 1, '2023-01-01'),
(12, 7, '2023-01-02'),
(5, 1, '2023-01-03'),
(7, 3, '2023-01-04'),
(3, 20, '2023-01-05'),
(15, 1, '2023-01-06'),
(9, 28, '2023-01-07'),
(4, 5, '2023-01-08'),
(20, 1, '2023-01-09'),
(1, 25, '2023-01-10'),
(11, 1, '2023-01-11'),
(6, 9, '2023-01-12'),
(5, 29, '2023-01-13'),
(17, 14, '2023-01-14'),
(2, 2, '2023-01-15'),
(14, 18, '2023-01-16'),
(8, 27, '2023-01-17'),
(5, 30, '2023-01-18'),
(13, 4, '2023-01-19'),
(16, 22, '2023-01-20'),
(5, 22, '2023-01-21'),
(12, 11, '2023-01-22'),
(3, 22, '2023-01-23'),
(7, 6, '2023-01-24'),
(3, 23, '2023-01-25'),
(15, 13, '2023-01-26'),
(9, 26, '2023-01-27'),
(4, 17, '2023-01-28'),
(3, 24, '2023-01-29'),
(1, 21, '2023-01-30');

# 5 người đã like nhà hàng nhiều nhất.
SELECT u.user_id, u.full_name, COUNT(*) AS total_likes
FROM like_res l
JOIN users u ON l.user_id = u.user_id
GROUP BY u.user_id, u.full_name
ORDER BY total_likes DESC
LIMIT 5;

# 2 nhà hàng có lượt like nhiều nhất.
SELECT r.res_id, r.res_name, COUNT(*) AS total_likes
FROM like_res l
JOIN restaurants r ON l.res_id = r.res_id
GROUP BY r.res_id, r.res_name
ORDER BY total_likes DESC
LIMIT 2;

# người đã đặt hàng nhiều nhất
SELECT u.user_id, u.full_name, COUNT(*) AS total_orders
FROM orders o
JOIN users u ON o.user_id = u.user_id
GROUP BY u.user_id, u.full_name
ORDER BY total_orders DESC
LIMIT 1;


# Tìm người dùng không hoạt động trong hệ thống(không đặt hàng, không like, không đánh giá nhà hàng)
SELECT u.user_id, u.full_name
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
LEFT JOIN like_res l ON u.user_id = l.user_id
LEFT JOIN rate_res r ON u.user_id = r.user_id
WHERE o.user_id IS NULL AND l.user_id IS NULL AND r.user_id IS NULL;

