-- Delete a user and their associated emails and positions
DELETE FROM UserEmails WHERE UserID = '202012345';
DELETE FROM UserPositions WHERE UserID = '202012345';
DELETE FROM Users WHERE UserID = '202012345';