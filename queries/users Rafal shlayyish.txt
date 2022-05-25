use users;
SELECT * FROM users;
-- Query: Create 3 new users
INSERT INTO users(id,first_name,last_name)
VALUES
(1,'Adam','Jhone','adamj34@email.com'),
(2,'Lily','Danial','lily34524@email.com'),
(3,'Steve','Noah','Noahst@email.com');

-- Query: Retrieve all the users
SELECT * FROM users;

-- Query: Retrieve the first user using their email address
SELECT concat(first_name,' ',last_name) AS user_name  From users
 WHERE email='adamj34@email.com';
 
--  Query: Retrieve the last user using their id
SELECT * From users
 WHERE id=3; 
 
--  Query: Change the user with id=3 so their last name is Pancakes
UPDATE USERS 
SET LAST_NAME='Pancakes'
WHERE id=3;


-- Query: Delete the user with id=2 from the database
DELETE FROM users
WHERE id=2;

-- Query: Get all the users, sorted by their first name
SELECT * FROM users
order by FIRST_NAME ASC;

-- BONUS Query: Get all the users, sorted by their first name in descending order
SELECT * FROM users
order by FIRST_NAME DESC;




