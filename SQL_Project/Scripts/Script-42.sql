UPDATE NP_PASSWORD SET PASSWORD = 'e10adc3949ba59abbe56e057f20f883e';

SELECT * FROM ORG o ;

SELECT CAIWRZRQ ,KUAIJPZH FROM GAMS_CARD gcj2 gcj WHERE gcj.BILLCODE = 'TY2020000085' AND gcj.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC' AND gcj.ruzxs = '37B5592B60000021761FD48A8304C546';


SELECT count(1) FROM GAMS_CARD gcj WHERE  gcj.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC' AND gcj.ruzxs <> '37B5592B60000021761FD48A8304C546';



select a.table_name,

       a.num_rows,  --  记录数

        Round (a.avg_row_len * a.num_rows /  1024 /  1024 /  0.9 ,  4 )  as need_size,  --  数据大小

        Round (a.blocks *  8 /  1024 ,  4 )  as real_size,  --  实际占用空间  ,

        Round (a.blocks *  8 /  1024 - a.avg_row_len * a.num_rows /  1024 /  1024 /  0.9 ,  4 )  as recover_mb  --  浪费空间大小

   from dba_tables a

  where a.blocks *  8 /  1024 - a.avg_row_len * a.num_rows /  1024 /  1024 /  0.9 >  50

    and a.owner =  'CQDZGCZYXY_ZCGL'

  order by recover_mb  desc ;
  
 SELECT * FROM gams_jc_valuetype;

SELECT * FROM ORG o ;
 
SELECT gjv.TITLE,COUNT(1) FROM GAMS_CARD gc  LEFT JOIN GAMS_JC_VALUETYPE gjv ON gc.JIAZLX = gjv.ID WHERE gc.ORGUNIT = '6E35BC1F80000001F6D62BD49F8EC9CC' GROUP BY gjv.TITLE ;

SELECT gc.shiy FROM GAMS_CARD gc WHERE gc.BILLCODE = 'TY2014001088';

SELECT * FROM GAMS_JC_VALUETYPE;

SELECT * FROM GAMS_JC_GAINMANNER ,GAMS_JC_VALUETYPE ;


SELECT * FROM GAMS_JC_GAINMANNER LEFT JOIN GAMS_JC_VALUETYPE ON 1=1;

