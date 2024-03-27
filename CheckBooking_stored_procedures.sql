CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(in booking_date date, in table_number int)
BEGIN
declare is_booked int;
select count(*) into is_booked from Bookings
where BookingDate = booking_date AND TableNo = table_number;
if is_booked > 0 then select "Booked" as Status;
else select "Available" as Status;
end if;
END