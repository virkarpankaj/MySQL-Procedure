delimiter ??
create procedure get_order_status(IN user_in_status varchar(30), out total int)
begin
select count(ordernumber) into total 
from orders
where status = user_in_status;
end ??

-- into -> we store the value in another variable which we can call back later

call get_order_status('shipped',@total);
select @total as total_nos;                                      -- since the procedure does not return the value we have to envoke select

# session variable  - can be anything      @abc, @ def @anything

call get_order_status('In process',@total);
select @total as total_nos;

call get_order_status('cancelled',@total);
select @total as total_nos;

call get_order_status('disputed',@total);
select @total as total_nos;

call get_order_status('onhold',@total);
select @total as total_nos;

call get_order_status('resolved',@total);
select @total as total_nos;


