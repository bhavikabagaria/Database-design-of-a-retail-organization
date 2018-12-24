Delimiter $$
create procedure proc_in_out(in year1 int, in year2 int, out total int)
begin
declare fyear int;
declare syear int;
set fyear = year1;
set syear = year2;
select count(*) into total
from films
where YearReleased between fyear and syear;
end $$
Delimiter ;

call proc_in_out(1975,1988, @total);
select @total;
