
-- ClassLogin Database

-- Drop database if exists
DROP DATABASE IF EXISTS ClassLoginLogout;
GO

-- Create database
CREATE DATABASE ClassLoginLogout;
USE ClassLoginLogout;
GO

-- Drop user if exists
DROP USER IF EXISTS 'ClientUser'@'localhost';
GO

-- Create user
CREATE USER 'ClientUser' IDENTIFIED BY 'Aakjdsg4R0!';
GO

-- Gives user permissions
GRANT ALL PRIVILEGES ON ClassLoginLogout.* TO 'ClientUser';
GO

-- Drop user if exists
DROP USER IF EXISTS 'PanelUser'@'localhost';
GO

-- Create user
CREATE USER 'PanelUser' IDENTIFIED BY 'Bblketh5S1@';
GO

-- Gives user permissions
GRANT INSERT ON ClassLoginLogout.Logs TO 'PanelUser';
GO

-- LoggedInandLoggedOut Table
CREATE TABLE Logs
(
    ClassID TEXT PRIMARY KEY NOT NULL,
    LastNameID TEXT NOT NULL,
    TimeID TIME NOT NULL,
    DateID DATE NOT NULL,
    LoginStatus TEXT NOT NULL
);
GO

-- LastNames Table
CREATE TABLE UserData
(
    LastnameID TEXT PRIMARY KEY NOT NULL,
    AssociatedClassID TEXT NOT NULL
);
GO

-- Classes Table
CREATE TABLE ClassNumbers
(
    ClassID TEXT PRIMARY KEY NOT NULL
);
GO

SELECT *
FROM Logs, ClassNumbers, UserData
INNER JOIN Classes
ON Logs.ClassID = ClassNumbers.ClassID
INNER JOIN UserData
ON Logs.LastNameID = UserData.LastnameID
INNER JOIN UserData
ON Logs.AssociatedClassID = UserData.AssociatedClassID
GO
