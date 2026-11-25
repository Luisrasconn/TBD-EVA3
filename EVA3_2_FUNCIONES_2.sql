delimiter $$
create function es_par(valor int)
returns varchar (50) deterministic
begin
	declare residuo int default 0;
    declare mensaje varchar(50);
    
    set residuo= mod(valor,2);
    
    if residuo = 0 then
		set mensaje = "EL VALOR ES PAR";
    else
		set mensaje="el vlaor es impar";
      end if;
      return mensaje;
end $$
	
delimiter ;