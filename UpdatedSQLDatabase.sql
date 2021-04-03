
-- ClassLogin Database

-- Drop database if exists
DROP DATABASE IF EXISTS ClassLoginLogout;

-- Create database
CREATE DATABASE ClassLoginLogout;
USE ClassLoginLogout;

-- Drop user if exists
DROP USER IF EXISTS 'ClassLLUser'@'localhost';

-- Create user
CREATE USER 'ClassLLUser' IDENTIFIED BY 'Aakjdsg4R0!';

-- Gives user permissions
GRANT ALL PRIVILEGES ON ClassLLuser.* TO 'ClassLLuser';

-- LoggedInandLoggedOut Table
CREATE TABLE LoggedInandLoggedOut
(
    ClassID INTEGER PRIMARY KEY NOT NULL,
    LastNameID INTEGER NOT NULL,
    TimeID TIME NOT NULL,
    DateID DATE NOT NULL,
    LoginStatusID INTEGER
);

-- LastNames Table
CREATE TABLE UserData
(
    LastnameID INTEGER PRIMARY KEY NOT NULL,
    AssociatedClassID INTEGER NOT NULL
);

-- Classes Table
CREATE TABLE ClassNumbers
(
    ClassID INTEGER PRIMARY KEY NOT NULL
);

SELECT *
FROM LoggedInandLoggedOut, ClassNumbers, UserData
INNER JOIN Classes
ON LoggedInandLoggedOut.ClassID = ClassNumbers.ClassID
INNER JOIN UserData
ON LoggedInandLoggedOut.LastNameID = UserData.LastnameID
INNER JOIN UserData
ON LoggedInandLoggedOut.AssociatedClassID = UserData.AssociatedClassID
