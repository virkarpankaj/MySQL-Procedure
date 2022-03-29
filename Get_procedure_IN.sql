# creating procedure with IN PARAMETER

Delimiter //
create procedure GetCustomers_in(IN userinput varchar(30), userinput2 varchar(30))   # By default IN  in 2nd argument
Begin

select customername, country from customers
where country in (userinput, userinput2)
order by country ;
end //
delimiter //

CALL GetCustomers_in('Australia','USA');

CALL GETCUSTOMERS_IN('Belgium') ; --  will not work
CALL GETCUSTOMERS_IN('Belgium', '') ;  -- pass 2nd argument as '' null string


drop procedure GetCustomers_in;