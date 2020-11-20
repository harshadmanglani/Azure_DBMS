delimiter //
create trigger update_item_price
before insert
on consists_of
for each row
begin
set new.total_amt = new.quantity * (select price from item where itemid = new.itemid);
end//
delimiter ;

