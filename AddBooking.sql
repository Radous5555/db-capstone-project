DELIMITER //
CREATE PROCEDURE AddBooking (IN x INT, IN y INT, IN z DATETIME, IN g INT)
BEGIN
INSERT INTO bookings VALUES (x, y, z, g);
SELECT "New booking added" as "Confirmation";
END //
DELIMITER ;