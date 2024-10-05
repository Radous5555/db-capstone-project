DELIMITER //
CREATE PROCEDURE CancelBooking (IN r INT)
BEGIN
DELETE FROM Bookings
WHERE BookingID = r;
SELECT CONCAT("Booking ", r, " cancelled") as "Confirmation";
END //
DELIMITER ;