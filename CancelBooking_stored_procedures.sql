CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(in bookingid int)
BEGIN
delete from Bookings where BookingID = bookingid;
commit;
END