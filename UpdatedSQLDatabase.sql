
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

-- LoggedInandLoggedOut Table
CREATE TABLE LoggedInandLoggedOut
(
    ClassID INTEGER PRIMARY KEY NOT NULL,
    LastName INTEGER NOT NULL,
    TheTime TIME NOT NULL,
    TheDate DATE NOT NULL,
    LoginStatus INTEGER
);

-- LastNames Table
CREATE TABLE LastNames
(
    Lastnames INTEGER PRIMARY KEY NOT NULL,
    AssociatedClassID INTEGER NOT NULL
);

-- LastNames Table
CREATE TABLE ClassID
(
    ClassNumbers INTEGER PRIMARY KEY NOT NULL
);
