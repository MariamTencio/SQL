# Overview

I've created a software application that manages movie rankings using a SQL Relational Database. 


[Software Demo Video](https://youtu.be/OSZqSpgbnqM)
# Relational Database

The relational database I'm using is named Movie_Rankings. It consists of three main tables: Movies, Users, and Ratings.

Tables:
Movies Table Structure:
id (INTEGER, PRIMARY KEY)
title (TEXT, NOT NULL)
genre (TEXT)
release_date (DATE)
director (TEXT)

Users Table Structure:
id (INTEGER, PRIMARY KEY)
username (TEXT, NOT NULL, UNIQUE)
email (TEXT NOT NULL, UNIQUE)

Ratings Table Structure:
id (INTEGER, PRIMARY KEY)
user_id (INTEGER, FOREIGN KEY referencing Users.id)
movie_id (INTEGER, FOREIGN KEY referencing Movies.id)
rating (INTEGER, CHECK constraint: rating >= 1 AND rating <= 5)
review (TEXT)
rating_date (DATE)


# Development Environment
The programming langiage is SQL and the database management systen was MySQL

# Useful Websites

{Make a list of websites that you found helpful in this project}

- [Web Site Name](https://dev.mysql.com/doc/mysql-getting-started/en/)
- [Web Site Name](https://www.mssqltips.com/)

# Future Work

Looking forward, here are some improvements and additions I plan to make to this project:

- Improve user interface.
- Implement user authentication and authorization features.
- Expand the database schema to include more detailed movie information.
