delimiter //
create trigger update_order_price
after insert
on consists_of
for each row
begin
update purchase_orders set total_price = total_price + new.total_amt where orderid = new.orderid;
end//
delimiter ;

