delimiter //
create procedure max_salary_curs()
begin

declare temp int default 0;
declare max int default 0;
declare i int default 1;

declare s cursor for select salary from emp;
declare continue handler for not found set i = 0;

open s;

while i = 1 do
fetch s into temp;
if temp > max then
set max = temp;
end if;
end while;

close s;
select max as max_salary;

end//
delimiter ;

