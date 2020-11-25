delimiter //
create procedure proc_gst(IN order_id INT, OUT gst INT)
begin
set gst = 0;
select total_price into gst from purchase_orders where orderid = order_id;
set gst = gst * 1.18;
select gst;
end //
delimiter ;

