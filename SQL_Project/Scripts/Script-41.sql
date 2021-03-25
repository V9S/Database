SELECT
  bpi.id AS taskId,
  gt.id AS id,
  gt.BILL_CODE AS billcode,
  shenqr.name AS shenqr,
  gt.shenqsj AS shenqsj,
  diaocbm.name AS diaocbm,
  diaorbm.name AS diaorbm
FROM
  gams2_workflow_bus_process  bpi
JOIN gams_transfer  gt ON
  bpi.BUSINESS_DATA_ID = gt.id
LEFT JOIN gams_jc_department  diaocbm ON
  gt.diaocbm = diaocbm.id
LEFT JOIN gams_jc_department  diaorbm ON
  gt.diaorbm = diaorbm.id
LEFT JOIN gams_jc_personnel  shenqr ON
  gt.shenqr = shenqr.id
WHERE
  gt.lyenable = 1
  AND EXISTS (
  SELECT
    1
  FROM
    gams_transfer_detail detail
  JOIN gams_jc_personnel pe ON
    pe.id = detail.shiyr_new
  WHERE
    (detail.isly = 0
    OR detail.isly IS NULL)
    AND detail.MASTER_ID = gt.id)
  AND gt.yewlx = '部门内调拨'
ORDER BY
  gt.CREATE_TIME DESC;
 
  SELECT lyenable FROM gams_transfer
  
 	SELECT * FROM GAMS_JC_PERSONNEL gjp WHERE ORGID = '6E35BC1F80000001F6D62BD49F8EC9CC';
  DELETE  FROM GAMS_JC_PERSONNEL gjp WHERE code = '198702013';
  SELECT 'drop table '||table_name||' cascade constraints;' FROM USER_TABLES;
 SELECT * FROM ORG o ;
 
CREATE TABLE GAMS_JC_PERSONNEL_1 AS SELECT * FROM GAMS_JC_PERSONNEL gjp ;
DROP TABLE GAMS_JC_PERSONNEL cascade constraints ;

CREATE TABLE GAMS_JC_PERSONNEL AS SELECT * FROM GAMS_JC_PERSONNEL_1 gjp ;

SELECT * FROM GAMS_JC_PERSONNEL gjp ;

SELECT * FROM gams_jc_assetsort_gb;

SELECT * FROM CQDZGCZYXYZCGL.GAMS_JC_ASSETCLASS_GB WHERE STDCODE ='1011607';--国标分类3755b564-a000-0881-0b69-099c1cc37c58

SELECT * FROM GAMS_JC_ASSETSORT_GB gjag2  ;--国标大类


3711f0fc-c000-0001-bfff-d450e0e1a606
3711f12f-c000-0001-92e9-40e7fae32e55
3711f188-8000-0001-5f7b-3eb71fb051b4
3711f235-2000-0001-0959-c9c3dce08650
3711f258-0000-0001-7c4f-455d197158bd
3711f2b3-8000-0001-96d9-0238154fe14d
3dca958f-0000-0021-7867-3e76d0ce4984