
-- ClassLogin Database

-- Drop database if exists
DROP DATABASE IF EXISTS ClassLoginLogout;

-- Create database
CREATE DATABASE ClassLoginLogout;
USE ClassLoginLogout;

-- Drop user if exists
DROP USER IF EXISTS 'ClientUser'@'localhost';

-- Create user
CREATE USER 'ClientUser'@'localhost' IDENTIFIED BY 'Aakjdsg4R0!';

-- Gives user permissions
GRANT ALL PRIVILEGES ON ClassLoginLogout.* TO 'ClientUser';

-- LoggedInandLoggedOut Table
CREATE TABLE Logs
(
    ClassID TEXT PRIMARY KEY NOT NULL,
    LastNameID TEXT NOT NULL,
    TimeID TIME NOT NULL,
    DateID DATE NOT NULL,
    LoginStatus TEXT NOT NULL
);

-- LastNames Table
CREATE TABLE UserData
(
    LastnameID TEXT PRIMARY KEY NOT NULL
);

-- Classes Table
CREATE TABLE ClassNumbers
(
    ClassID TEXT PRIMARY KEY NOT NULL
);

SELECT *
FROM Logs, ClassNumbers, UserData
INNER JOIN Classes
ON Logs.ClassID = ClassNumbers.ClassID
INNER JOIN UserData
ON Logs.LastNameID = UserData.LastnameID

-- Drop user if exists
DROP USER IF EXISTS 'PanelUser'@'localhost';

-- Create user
CREATE USER 'PanelUser'@'localhost' IDENTIFIED BY 'Bblketh5S1@';

-- Gives user permissions
GRANT INSERT ON ClassLoginLogout.Logs TO 'PanelUser';
GRANT SELECT ON ClassLoginLout.UserData TO 'PanelUser';
GRANT SELECT ON ClassLoginLout.ClassNumbers TO 'PanelUser';
