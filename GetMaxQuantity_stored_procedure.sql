CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN
select max(Quantity) as "Max Quantity in Order" from Orders; 
END