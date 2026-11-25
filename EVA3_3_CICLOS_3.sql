delimiter $$

-- Elimina la función si ya existe para evitar el error 1304
drop function if exists sumatoria_while;

create function sumatoria_while(numero int)
returns int deterministic
begin
    declare sumatoria int default 0;
    declare cont int default 1;

    repeat
        set sumatoria = sumatoria + cont;
        set cont = cont + 1;
    until cont > numero end repeat;

    return sumatoria;
end $$

delimiter ;