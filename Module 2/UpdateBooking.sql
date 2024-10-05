DELIMITER //
CREATE PROCEDURE UpdateBooking (IN a INT, IN b DATETIME)
BEGIN
UPDATE bookings
SET BookingDate = b
WHERE BookingID = a;
SELECT CONCAT("Booking ", a, " updated") as "Confirmation";
END //
DELIMITER ;