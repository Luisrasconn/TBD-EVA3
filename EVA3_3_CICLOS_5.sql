delimiter $$
create procedure conteo_ciudades(out cont int)
begin
	select count(*) into cont from ciudad;
end $$
delimiter ;