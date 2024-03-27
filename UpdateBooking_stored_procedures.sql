CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(in bookingid int, in bookingdate date)
BEGIN
update Bookings set BookingDate = bookingdate where BookingID = bookingid;
commit;
select concat(bookingid, " ", "updated") as Confirmation;
END