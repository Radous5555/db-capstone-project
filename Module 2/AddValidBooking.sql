DELIMITER //
CREATE PROCEDURE AddValidBooking(IN desireddate DATETIME, IN tableno INT)
BEGIN
	DECLARE output VARCHAR(100);
	START TRANSACTION;
    IF (NOT EXISTS (SELECT TableID FROM Bookings WHERE TableID = tableno) AND NOT EXISTS (SELECT BookingDate FROM Bookings WHERE BookingDate = desireddate)) THEN
        INSERT INTO Bookings (CustomerID, BookingDate, TableID) VALUES (1, desireddate, tableno);
        SET output = CONCAT("Table ", tableno, " is available - booking confirmed");
        COMMIT;
    ELSE 
        SET output = CONCAT("Table ", tableno, " is already booked - booking cancelled");
        ROLLBACK;
    END IF;
	SELECT output AS "Booking status";
END;
//
DELIMITER ;