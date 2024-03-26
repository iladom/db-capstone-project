CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN orderID INT)
BEGIN
delete from Orders where OrderID = orderID;
select row_count() as "Rows Affected";
END