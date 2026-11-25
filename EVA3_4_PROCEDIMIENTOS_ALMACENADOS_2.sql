delimiter $$
create function generar_rfc(
    nombre varchar(50),
    ap_pat varchar(50),
    ap_mat varchar(50),
    fecha_nac date
) returns varchar(10)
deterministic
begin
    declare letras varchar(4);
    declare fecha varchar(6);

    set letras = concat(
        left(upper(trim(ap_pat)), 1),
        ifnull(regexp_substr(substring(upper(trim(ap_pat)), 2), '[AEIOU]'), 'X'),
        if(ap_mat is null or trim(ap_mat) = '', 'X', left(upper(trim(ap_mat)), 1)),
        left(upper(trim(nombre)), 1)
    );

    set fecha = date_format(fecha_nac, '%y%m%d');

    return concat(letras, fecha);
end $$
delimiter ;