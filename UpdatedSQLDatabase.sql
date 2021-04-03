
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

-- Classes Table
CREATE TABLE Classes
(
    ClassID INTEGER PRIMARY KEY NOT NULL
);

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
    LastName INTEGER NOT NULL,
    AssociatedClassID INTEGER NOT NULL,
    TheTime TIME NOT NULL,
    TheDate DATE NOT NULL,
    LoginStatus INTEGER
);

-- UserData Table
CREATE TABLE UserData
(
    Lastnames INTEGER PRIMARY KEY NOT NULL,
    AssociatedClassID INTEGER NOT NULL
);

-- Classes Table
CREATE TABLE Classes
(
    ClassID INTEGER PRIMARY KEY NOT NULL
);

SELECT *
FROM LoggedInandLoggedOut, Classes, UserData
INNER JOIN Classes
ON LoggedInandLoggedOut.ClassID = Classes.ClassID
INNER JOIN UserData
ON LoggedInandLoggedOut.LastName = UserData.Lastname
INNER JOIN UserData
ON LoggedInandLoggedOut.AssociatedClassID = UserData.AssociatedClassID
