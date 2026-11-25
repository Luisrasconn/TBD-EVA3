delimiter $$
create procedure insertar_persona(
    in nombre varchar(50),
    in ap_pat varchar(50),
    in ap_mat varchar(50),
    in fecha_nac date
)
begin
    declare rfc_nuevo varchar(10);
    set rfc_nuevo = generar_rfc(nombre, ap_pat, ap_mat, fecha_nac);
    insert into persona value (rfc_nuevo, nombre, ap_pat, ap_mat, fecha_nac);
end $$
delimiter ;