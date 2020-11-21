delimiter //
create procedure proc_out(OUT a INT)
begin
select a;
set a = 0;
end//
delimiter ;

