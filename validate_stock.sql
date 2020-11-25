delimiter //
create trigger validate_stock
after insert
on consists_of
for each row
begin
declare errormsg varchar(128);
if new.quantity > (select stock from item where itemid = new.itemid) then set errormsg = concat("Quantity not available");
signal sqlstate '55000' set message_text = errormsg;
end if;
if new.quantity <= 0 then
set errormsg = concat("Invalid quantity");
signal sqlstate '55000' set message_text = errormsg;
end if;
update item set stock = stock - new.quantity where itemid = new.itemid;
end//
delimiter ;
