delimiter //
create procedure large_order_cursor()
begin

declare m int default 0;
declare j int default 1;

declare s cursor for select quantity from consists_of;
declare continue handler for not found set j = 0;

open s;

while j = 1 do
fetch s into m
if m >= 20 then
update consists_of set big_quantity = 'YES' where quantity = m;
else
update consists_of set big_quantity = 'NO' where quantity = m;
end if;
end while;
close s;
end//
delimiter ;

