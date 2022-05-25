-- Query: Create 6 new users
INSERT INTO users(first_name,last_name)
VALUES
('Amy','Adam'),
('Nina','George'),
('Jack','Robert'),
('Marry','Noha'),
('Mina','Hani'),
('Jacob','Josh');

-- Query: Have user 1 be friends with user 2, 4 and 6
INSERT INTO freindships(user_id,freind_id)
VALUES
(1,2),
(1,4),
(1,6);

-- Query: Have user 2 be friends with user 1, 3 and 5
INSERT INTO freindships(user_id,freind_id)
VALUES
(2,1),
(2,3),
(2,5);

-- Query: Have user 3 be friends with user 2 and 5
INSERT INTO freindships(user_id,freind_id)
VALUES
(3,2),
(3,5);

-- Query: Have user 4 be friends with user 3
INSERT INTO freindships(user_id,freind_id)
VALUES
(4,3);

-- Query: Have user 5 be friends with user 1 and 6
INSERT INTO freindships(user_id,freind_id)
VALUES
(5,1),
(5,6);

-- Query: Have user 6 be friends with user 2 and 3
INSERT INTO freindships(user_id,freind_id)
VALUES
(6,2),
(6,3);
SELECT * FROM FREINDSHIPS;
select * from users;

SELECT users.first_name, users.last_name,connect_freind.first_name as friend_first_name, 
 connect_freind.last_name as friend_last_name 
FROM users
JOIN freindships ON users.id = freindships.user_id
JOIN users as connect_freind ON connect_freind.id = freindships.freind_id;

-- NINJA Query: Return all users who are friends with the first user,
--  make sure their names are displayed in results.
SELECT users.first_name, users.last_name,connect_freind.first_name as friend_first_name, 
 connect_freind.last_name as friend_last_name 
FROM users
JOIN freindships ON users.id = freindships.user_id
JOIN users as connect_freind ON connect_freind.id = freindships.freind_id
WHERE users.id=1;

-- NINJA Query: Return the count of all friendships
select count(freindships.id) as number_of_freindships from freindships;

-- NINJA Query: Find out who has the most friends and return the count of their friends.
SELECT users.first_name, users.last_name,count(freindships.freind_id) as max_freindships
FROM users
JOIN freindships ON users.id = freindships.user_id
JOIN users as connect_freind ON connect_freind.id = freindships.freind_id
group by users.first_name
order by count(connect_freind.first_name) DESC limit 1;





-- SELECT concat(users.first_name,' ', users.last_name ) as user_name ,

