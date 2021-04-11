
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
CREATE TABLE LabLogs
(
    ClassID TEXT NOT NULL,
    LastNameID TEXT NOT NULL,
    LoginStatus TEXT NOT NULL,
    TimeID TIME NOT NULL,
    DateID DATE NOT NULL
);

-- LastNames Table
CREATE TABLE UserData
(
    LastnameID TEXT NOT NULL
);

-- Classes Table
CREATE TABLE ClassNumbers
(
    ClassID TEXT NOT NULL
);

-- Creates inner joins
SELECT LabLogs.ClassID, ClassNumbers.ClassID, UserData.LastNameID, LabLogs.LastnameID
FROM LabLogs
INNER JOIN ClassNumbers
ON ClassNumbers.ClassID = LabLogs.ClassID
INNER JOIN UserData
ON UserData.LastNameID = LabLogs.LastnameID;

-- Drop user if exists
DROP USER IF EXISTS 'PanelUser'@'localhost';

-- Create user
CREATE USER 'PanelUser'@'localhost' IDENTIFIED BY 'Bblketh5S1@';

-- Gives user permissions
GRANT INSERT ON ClassLoginLogout.Logs TO 'PanelUser';
GRANT SELECT ON ClassLoginLogout.UserData TO 'PanelUser';
GRANT SELECT ON ClassLoginLogout.ClassNumbers TO 'PanelUser';
