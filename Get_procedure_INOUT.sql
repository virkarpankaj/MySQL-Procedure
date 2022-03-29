delimiter //
create procedure SET_COUNTER(INOUT count int, IN increment int)
begin
set count = count + increment ;
end //

delimiter //

set @count = 1;
call set_counter(@count,1);
select @count

call set_counter(@count,2);
select @count

call set_counter(@count,5);
select @count