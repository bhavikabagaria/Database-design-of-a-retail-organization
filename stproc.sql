delimiter $$
create procedure
proc_inout(inout var1 int, in var2 int)
begin
 set var1 = var1 + var2;
 end $$
 delimiter ;
 
 set @counter = 1;
 call proc_inout(@counter, 1);
 select @counter;