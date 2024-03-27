CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(in booking_date date, in table_number int)
BEGIN
declare table_is_already_booked int;
start transaction;
insert into Bookings(BookingDate, TableNo) value (booking_date, table_number);
select count(*) into table_is_already_booked from Bookings where BookingDate = booking_date and TableNo = table_number;
if table_is_already_booked > 1 then select "Table is occupied - booking canceled" as Booking_status;
rollback;
else select "Bookiing confirmed" as Booking_status;
commit;
end if;
END