-- Retrieve all users with their emails and positions
SELECT u.UserID, u.LoginID, u.Surname, u.Forenames, u.Title, u.Phone, u.Location, 
       GROUP_CONCAT(e.Email) AS Emails, 
       GROUP_CONCAT(p.Position) AS Positions
FROM Users u
LEFT JOIN UserEmails e ON u.UserID = e.UserID
LEFT JOIN UserPositions p ON u.UserID = p.UserID
GROUP BY u.UserID;