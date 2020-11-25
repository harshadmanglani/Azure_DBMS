delimiter //
create procedure total_order_till_date(OUT total INT, IN customerid INT)
begin
set total = 0;
select sum(total_price)into total from purchase_orders where cid = customerid;
end//
delimiter ;

