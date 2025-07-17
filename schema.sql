CREATE DATABASE expense;

USE expense;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  password VARCHAR(100)
);

CREATE TABLE expenses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  description VARCHAR(255),
  amount DECIMAL(10,2),
  date DATE,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
