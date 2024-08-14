CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books (
    book_id INT PRIMARY KEY IDENTITY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    published_year INT,
    available BIT DEFAULT 1
);

CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Reservations (
    reservation_id INT PRIMARY KEY IDENTITY,
    book_id INT FOREIGN KEY REFERENCES Books(book_id),
    user_id INT FOREIGN KEY REFERENCES Users(user_id),
    reservation_date DATE NOT NULL,
    status VARCHAR(50) DEFAULT 'Pending'
);
