SELECT A.constraint_name, A.table_name, b.constraint_name
  FROM user_constraints A, user_constraints b
 WHERE A.constraint_type = 'R'
   AND b.constraint_type = 'P'
   AND A.r_constraint_name = b.constraint_name
   AND A.constraint_name = UPPER('FKGNCAB733PXV3JGR482NDKF9VG')
   
select constraint_name,constraint_type,table_name from all_constraints where CONSTRAINT_NAME='SYS_C00192453';

SELECT * FROM GAMS_INVENTORY_H;

SELECT * FROM GAMS_INVENTORY_I gii ;

DELETE FROM  GAMS_INVENTORY_H;

DELETE FROM  GAMS_INVENTORY_I;