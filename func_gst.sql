delimiter //
create function func_gst(price int) returns int deterministic
begin
set price = price * 0.18;
return price;
end //
delimiter ;

