delimiter //
create trigger date_trigger
before insert
on purchase_orders
for each row
begin
set new.dt = curdate();
end//
delimiter ;
