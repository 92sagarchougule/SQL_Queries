select * from consumer;   /* To get table */

update consumer
set unit = 'tobe' where objectid = 1482842   /* To update table values */

select geom from roads;    /* To select geometry column */

select st_astext(geom) from roads;   /* To get geometry with lat/long values */

select st_astext(st_centroid(geom)) from roads;   /* to get centroid point geometry column */

select st_centroid(geom) from roads;    /* to get centroid point */

