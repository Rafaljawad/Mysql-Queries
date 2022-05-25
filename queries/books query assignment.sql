-- Query: Create 5 dif-- ferent authors: Jane Austen, Emily Dickinson, Fyodor Dostoevsky, William Shakespeare, Lau Tzu
INSERT INTO authors(name)
VALUES
('Jane Austen'),
('Emily Dickinson'),
('Fyodor Dostoevsky'),
('William Shakespeare'),
('Lau Tzu');

-- Query: Create 5 books with the following names: C Sharp, Java, Python, PHP, Ruby
INSERT INTO books(title,number_of_pages)
VALUES
('C Sharp',300),
('Java',200),
('Python',400),
('PHP',150),
('Ruby',150);
SELECT * FROM books;

-- Query: Change the name of the C Sharp book to C#
UPDATE books 
SET title='C#'
WHERE id=1;
SELECT * FROM books; 

-- Query: Change the first name of the 4th author to Billauthors
UPDATE authors SET name='Bill'
WHERE id=4;
-- Query: Have the first author favorite the first 2 books
INSERT INTO favorites (author_id,book_id)
VALUES
(1,1),
(1,2);

-- --Query: Have the second author favorite the first 3 books
INSERT INTO favorites (author_id,book_id)
VALUES
(2,1),
(2,2),
(2,3);

-- --Query: Have the third author favorite the first 4 books
INSERT INTO favorites (author_id,book_id)
VALUES
(3,1),
(3,2),
(3,3),
(3,4);

-- --Query: Have the fourth author favorite all the books

INSERT INTO favorites (author_id,book_id)
VALUES
(4,1),
(4,2),
(4,3),
(4,4),
(4,5);

-- Query: Retrieve all the authors who favorited the 3rd book
SELECT authors.name as author_name , favorites.author_id as author_id, favorites.book_id as book_id,books.title as fav_book
From authors 
join favorites on authors.id=favorites.author_id 
JOIN books ON books.id=favorites.book_id
WHERE book_id=3
order by authors.name;


-- Query: Remove the first author of the 3rd book's favorites
DELETE FROM favorites 
WHERE book_id=3 AND author_id=3;

-- Find all the books that the 3rd author favorited
SELECT authors.name as author_name , favorites.author_id as author_id, favorites.book_id as book_id,books.title as fav_book
From authors 
join favorites on authors.id=favorites.author_id 
JOIN books ON books.id=favorites.book_id
where authors.id=3; 

-- Query: Find all the authors that favorited to the 5th book
SELECT authors.name as author_name , favorites.author_id as author_id, favorites.book_id as book_id,books.title as fav_book
From books 
join favorites on books.id=favorites.book_id 
JOIN authors ON authors.id=favorites.author_id
where books.id=5; 
