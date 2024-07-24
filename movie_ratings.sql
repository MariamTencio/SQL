-- Create the Movie_Rankings database
CREATE DATABASE Movie_Rankings;

-- Use the Movie_Rankings database
USE Movie_Rankings;

-- Create Movies table
CREATE TABLE Movies (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT,
    release_date DATE,
    director TEXT
);

-- Create Users table
CREATE TABLE Users (
    id INTEGER PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL UNIQUE
);

-- Create Ratings table
CREATE TABLE Ratings (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    movie_id INTEGER,
    rating INTEGER CHECK(rating >= 1 AND rating <= 5),
    review TEXT,
    rating_date DATE,
    FOREIGN KEY(user_id) REFERENCES Users(id),
    FOREIGN KEY(movie_id) REFERENCES Movies(id)
);

-- Insert a new movie
INSERT INTO Movies (id, title, genre, release_date, director)
VALUES (1, 'The Dark Knight', 'Action/Crime', '2008-07-18', 'Christopher Nolan');

-- Insert a new user
INSERT INTO Users (id, username, email)
VALUES (1, 'mariamtencio', 'mariamtch412@gmail.com');

-- Insert a new rating
INSERT INTO Ratings (id, user_id, movie_id, rating, review, rating_date)
VALUES (1, 1, 1, 5, 'Favorite movie!', '2024-07-22');

-- Update the rating of a specific review
UPDATE Ratings
SET rating = 4, review = 'Great movie!'
WHERE id = 1;

-- Delete a rating by id
DELETE FROM Ratings
WHERE id = 1;

-- Retrieve ratings from a specific user
SELECT * FROM Ratings
WHERE user_id = 1;

-- Retrieve movie titles and their average ratings using a join
SELECT Movies.title, AVG(Ratings.rating) AS average_rating
FROM Movies
JOIN Ratings ON Movies.id = Ratings.movie_id
GROUP BY Movies.id, Movies.title;
