delimiter //
create procedure zero_stock_cursor()
begin

declare m int default 0;
declare j int default 1;

declare s cursor for select stock from item;
declare continue handler for not found set j = 0;

open s;

while j=1 do
fetch s into m;
if m=0 then
update item set low_stock = 'YES' where stock = m;
else
update item set low_stock = 'NO' where stock = m;
end if;
end while;
close s;
end//
delimiter ;

