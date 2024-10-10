CREATE DATABASE UserManagement;
USE UserManagement;

-- Create Users Table
CREATE TABLE Users (
    UserID VARCHAR(255) NOT NULL PRIMARY KEY,
    LoginID VARCHAR(255) NOT NULL,
    Surname VARCHAR(255) DEFAULT NULL,
    Forenames TEXT,
    Title VARCHAR(255) DEFAULT NULL,
    Phone VARCHAR(50) DEFAULT NULL,
    Location VARCHAR(255) DEFAULT NULL,
    CONSTRAINT chk_user_id CHECK (UserID <> '' AND UserID NOT REGEXP '[[:space:]/()''\\[\\]&%!?"&]'),
    CONSTRAINT chk_login_id CHECK (LoginID NOT REGEXP '[[:space:]/()''\\[\\]&%!?"&]')
);

-- Create UserEmails Table
CREATE TABLE UserEmails (
    EmailID INT AUTO_INCREMENT PRIMARY KEY,
    UserID VARCHAR(255),
    Email VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Create UserPositions Table
CREATE TABLE UserPositions (
    PositionID INT AUTO_INCREMENT PRIMARY KEY,
    UserID VARCHAR(255),
    Position TEXT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

