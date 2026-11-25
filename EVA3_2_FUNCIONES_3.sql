delimiter $$
create function dia_semana(dia int)
returns varchar (50) deterministic
begin
	declare resu varchar(50);
    case dia
		when 1 then set resu = "DOMINGO";
        when 2 then set resu = "LUNES";
        when 3 then set resu = "MARTES";
        when 4 then set resu = "MIERCOLES";
        when 5 then set resu = "JUEVES";
        when 6 then set resu = "VIERNES";
        when 7 then set resu = "SABADO";
        else set resu="NUMERO DE DIA NO VALIDO";
        end case;
        return resu;
end $$
delimiter ;