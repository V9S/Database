SELECT * FROM GAMS_CARD gc ;


SELECT * FROM GAMS2_WORKFLOW_CONFIG gwc 

DELETE FROM GAMS2_WORKFLOW_CONFIG;

SELECT * FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000019';

SELECT * FROM GAMS_INSPECTIONENTRY_DETAIL gid WHERE gid.MASTER_ID = (SELECT ID FROM GAMS_INSPECTIONENTRY gi WHERE gi.BILL_CODE = 'YSSZ2020000019');

SELECT * FROM GAMS_CARD gc ;

DELETE gams_card WHERE billcode = 'TY2020000152';

SELECT A.constraint_name, A.table_name, b.constraint_name
  FROM user_constraints A, user_constraints b
 WHERE A.constraint_type = 'R'
   AND b.constraint_type = 'P'
   AND A.r_constraint_name = b.constraint_name
   AND A.constraint_name = UPPER('FK2XBEYCFSEEYCSE9YOR2SCP4OP')
   
select constraint_name,constraint_type,table_name from all_constraints where CONSTRAINT_NAME='SYS_C00197774';

SELECT * FROM GAMS_CARD_INVOICE;

SELECT * FROM GAMS_CARD_TYSB gct WHERE gct.BILLCODE = 'TY2020000152';

SELECT BIZDES FROM GAMS_CARD_TRACE gct GROUP BY BIZDES  ;


