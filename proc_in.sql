delimiter //
create procedure proc_in(IN a INT)
begin
set a = a+1;
select a;
end//
delimiter ;
