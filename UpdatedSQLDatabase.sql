
-- ClassLogin Database

-- Drop database if exists
DROP DATABASE IF EXISTS ClassLoginLogout;

-- Create database
CREATE DATABASE ClassLoginLogout;
USE ClassLoginLogout;

-- Drop user if exists
DROP USER IF EXISTS 'ClientUser'@'localhost';

-- Create user
CREATE USER 'ClientUser' IDENTIFIED BY 'Aakjdsg4R0!';

-- Gives user permissions
GRANT ALL PRIVILEGES ON ClassLoginLogout.* TO 'ClientUser';

-- Drop user if exists
DROP USER IF EXISTS 'PanelUser'@'localhost';

-- Create user
CREATE USER 'PanelUser' IDENTIFIED BY 'Bblketh5S1@';

-- Gives user permissions
GRANT ALL PRIVILEGES ON ClassLoginLogout.Logs TO 'PanelUser';

-- LoggedInandLoggedOut Table
CREATE TABLE Logs
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
FROM Logs, ClassNumbers, UserData
INNER JOIN Classes
ON Logs.ClassID = ClassNumbers.ClassID
INNER JOIN UserData
ON Logs.LastNameID = UserData.LastnameID
INNER JOIN UserData
ON Logs.AssociatedClassID = UserData.AssociatedClassID
