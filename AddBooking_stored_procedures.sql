CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(in bookingid int, in coustomerid int, in bookingdate date, in tablenumber int)
BEGIN
declare is_booked int;
start transaction;
insert into Bookings(BookingID, CustomerID, BookingDate, TableNo) values (bookingid, customerid, bookingdate, tablenumber);
select count(*) into is_booked from Bookings where BookingDate = bookingdate and TableNo = tablenumber;
if is_booked > 1 then select "No possibile - already booked" as No_Confirmation;
rollback;
else select "New booking added" as Confirmation;
commit;
end if;
END