delimiter //
create procedure proc_inout(INOUT a INT)
begin
select a
set a = a - 1;
end//
delimiter ;
