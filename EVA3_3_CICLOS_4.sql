delimiter $$

drop function if exists insertar_ciudad;

create function insertar_ciudad(id_ciudad int, ciudad varchar(50))
returns int deterministic modifies sql data
begin
    insert into ciudad (city_id, city) values (id_ciudad, ciudad);
    
    return 1;
end $$

delimiter ;