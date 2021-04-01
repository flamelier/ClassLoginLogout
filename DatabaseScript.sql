  
-- ClassLogin Database

-- Drop database if exists
DROP DATABASE IF EXISTS ClassLoginLogout;

-- Create database
CREATE DATABASE ClassLoginLogout;
USE ClassLoginLogout;

-- Drop user if exists
DROP USER IF EXISTS 'timBotUser'@'localhost';

-- Create user
CREATE USER 'ClassLLuser' IDENTIFIED BY 'Aakjdsg4R0!';

-- Gives user permissions
GRANT ALL PRIVILEGES ON ClassLLuser.* TO 'ClassLLuser';

-- UserINFO table
CREATE TABLE userINFO
(
    userID TEXT PRIMARY KEY NOT NULL,
    userCount INTEGER NOT NULL
);
