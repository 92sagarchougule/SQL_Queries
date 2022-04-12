select * from sector;

select name, type,landuse, place from sector;

select geom from sector;

select * from sector;

select name, type,landuse, place from sector where name = 'Burail'; /* Where query */

select * from sector;

select name, type,landuse, place from sector where name ilike '%a%'; /* find link name */

select name, type,landuse, place, geom from sector where name not ilike '%a%'; 

select name, type,landuse, place, geom from sector where name in ('Sector67');  /* get value */

