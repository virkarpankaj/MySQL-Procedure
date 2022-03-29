# Create Procedure --- fixed format  or function
# creating procedure with NO PARAMETER

Delimiter //
create procedure GetCustomers()
Begin
select customername, country from customers
where country in ('Australia','USA')
order by country;

end //

call GetCustomers;

drop procedure getcustomers;


Delimiter //
create procedure procedure_()
Begin
--  query inside this
end //

call procedure_ ;
drop procedure procedure_ ;