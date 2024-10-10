-- TESTING
-- Inserting sample data
INSERT INTO Users (UserID, LoginID, Surname, Forenames, Title, Phone, Location) VALUES
('202012345', 'cssbct', 'Tompsett-Ince-O\'Malley', 'Charles Philip Arthur George', 'His Royal Highness', '+44 1482 46 5222', 'In RB-336'),
('202012346', '123456', NULL, 'John', 'Mr.', '+1 555-0123', 'In Office 102'),
('202012347', 'admin', 'Doe', 'Jane', 'Dr.', '+49 30 123456', 'Room 204, Lab Building');

INSERT INTO UserEmails (UserID, Email) VALUES
('202012345', 'admin@example.com'),
('202012345', 'contact@example.com'),
('202012346', 'john.doe@example.com'),
('202012347', 'jane.smith@example.com');

INSERT INTO UserPositions (UserID, Position) VALUES
('202012345', 'King'),
('202012345', 'Professor of Environmental Science'),
('202012346', 'Developer'),
('202012347', 'Scientist'),
('202012347', 'Researcher');

