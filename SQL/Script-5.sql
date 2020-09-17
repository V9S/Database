sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2019-12-31', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.CZJJZ , 0) ELSE 0 END) AS ZY_CZJJZ,
sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2019-12-31', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.XZJZ , 0) ELSE 0 END) AS ZY_XZJZ,
sum(CASE WHEN COALESCE(ga.JIZRQ , TO_DATE('1971-01-01', 'YYYY-MM-DD HH24:MI:SS') ) <= TO_DATE('2019-12-31', 'YYYY-MM-DD HH24:MI:SS' ) AND gjs.STDCODE = '04' THEN COALESCE(ga.DCZJZ , 0) ELSE 0 END) AS ZY_DCZJZ,

ALTER TABLE GAMS_JC_ASSETCLASS DROP COLUMN fl; 


SELECT * FROM GAMS_JC_ASSETCLASS gja ;

alter table GAMS_JC_ASSETCLASS ADD  fl varchar(10 char)  NULL;

UPDATE
	GAMS_JC_ASSETCLASS
SET
	fl = (
CASE
		WHEN substr(STDCODE , 1, 1) = '3' THEN '3zy'
		WHEN substr(STDCODE , 1, 1) = '4' THEN '4ww'
		WHEN substr(STDCODE , 1, 1) = '2' THEN '2ty'
		WHEN substr(STDCODE , 1, 1) = '5' THEN '5ts'
		WHEN substr(STDCODE , 1, 3) = '101'
		OR substr(STDCODE , 1, 3) = '102' THEN '0td_0'
		WHEN substr(STDCODE , 1, 3) = '103' THEN '1td_1'
		WHEN substr(STDCODE , 1, 3) = '601'
		OR substr(STDCODE , 1, 3) = '602'
		OR substr(STDCODE , 1, 3) = '603'
		OR substr(STDCODE , 1, 3) = '604' THEN '6jj'
		WHEN substr(STDCODE,1,7) = '6050411' THEN '7wx_01'
		WHEN substr(STDCODE , 1, 3) = '605' AND substr(STDCODE,1,7) <> '6050411'  THEN '8wx_02'
		ELSE NULL
	END );

SELECT fl FROM GAMS_JC_ASSETCLASS a GROUP BY a.FL ;

UPDATE
	GAMS_JC_ASSETCLASS gc
SET
	fl = (
	case when (gc.stdcode like '101%' or gc.stdcode like '102%' or gc.stdcode like '103%') then '0td_0' 
	when gc.stdcode like '2%' then '2ty'
	when gc.stdcode like '3%' then '3zy' 
	when gc.stdcode like '4%' then '4ww' 
	when gc.stdcode like '5%' then '5ts'  
	when gc.stdcode like '605%' then '8wx_02'
	else 'jj' 
	 END)

	(case when (gc.stdcode like '101%' or gc.stdcode like '102%' or gc.stdcode like '103%') then '土地、房屋及构筑物' 
	when gc.stdcode like '2%' then '通用设备'
	when gc.stdcode like '3%' then '专用设备' 
	when gc.stdcode like '4%' then '文物和陈列品' 
	when gc.stdcode like '5%' then '图书档案'  
	when gc.stdcode like '605%' then '无形资产'  
	else '家具、用具、装具及动植物' end)	 
	 
	 
	 UPDATE
	GAMS_JC_ASSETCLASS gc
SET fl = '7wx_01' WHERE gc.STDCODE LIKE '6050411%';

SELECT * FROM GAMS_JC_ASSETCLASS WHERE fl = '8wx_02';

SELECT * FROM GAMS_JC_ASSETCLASS gc WHERE gc.fl IS NULL ;
	 
	 UPDATE
	GAMS_JC_ASSETCLASS gc SET fl = '7wx_01' WHERE gc.STDCODE = '6050411';


SELECT
	ga.ZYJZ AS "在用价值"
	ga.CZJJZ AS "出租借价值",
	ga.XZJZ AS "闲置价值",
	ga.DCZJZ AS "待处置价值",
	gjs.STDNAME
FROM
	GAMS_ASSETCARD ga
LEFT JOIN GAMS_JC_SYZK gjs ON
	ga.SYZK = gjs.RECID
LEFT JOIN GAMS_JC_ASSETCLASS gja ON ga.ZIFL = gja.RECID 
WHERE
	ga.CZJJZ <> 0
	AND gja.fl = 'wx_01';

SELECT  ROW_NUMBER() ,OVER(PARTITION BY ga.OBJECTID ORDER BY ga.JIZRQ DESC) Num FROM GAMS_ASSETCARD ga ; 

SELECT *
FROM(
    SELECT ga.*,ROW_NUMBER() OVER(PARTITION BY OBJECTID ORDER BY JIZRQ DESC) Num FROM GAMS_ASSETCARD ga 
) t
WHERE t.Num=1

SELECT fl FROM GAMS_JC_ASSETCLASS GROUP BY fl;

SELECT * FROM GAMS_ASSETCARD ga WHERE ga.BILLCODE = '20106267S' AND zymj IS NOT null;

select *  from GAMS_ASSETCARD ga  LEFT JOIN GAMS_JC_ASSETCLASS gja ON ga.ZIFL = gja.RECID where ga.billcode = '20106267S' and gja.fl = '2ty'

SELECT SUM(JIAZ )a,sum()AS a FROM GAMS_ASSETCARD ga GROUP BY SHUL 


select syzk.stdcode, syzk.stdname, sum(card.jiaz)
    from GAMS_ASSETCARD card
    left join (select jcard.objectid, max(jcard.jizrq) as jizrq
                 from GAMS_ASSETCARD jcard
                where to_char(jcard.jizrq, 'YYYY-MM-DD') < '2019-12-31'
                group by jcard.objectid) yy
      on card.objectid = yy.objectid
    left join GAMS_JC_SYZK syzk
      on syzk.recid = card.syzk
   where card.cardstate in ('00', '02')
     and card.jizrq = yy.jizrq
     and to_char(card.jizrq, 'YYYY-MM-DD') < '2019-12-31'
   group by syzk.stdcode, syzk.stdname
   
   SELECT * FROM GAMS_ASSETCARD ga WHERE ga.JIZRQ > TO_DATE('2018-01-01', 'YYYY-MM-DD HH24:MI:SS') AND ga.BILLCODE = '20106267S'
   
   SELECT * FROM MD_ORG mo WHERE mo.STDCODE = '000223';
   67F3F734A00001C1B70D7708DC3B7F70
   
   alter table GL_VOUCHER ADD  IMPORTFLAG  NUMBER(10)  NULL;
   
  
--  竞赛sql
alter table z01 add (Z01F28 NUMBER(20,2),acctyear NUMBER(10));

 alter table GAMS_JC_ASSETCLASS ADD  fl varchar(10 char)  NULL;

 alter table GL_VOUCHER ADD  IMPORTFLAG  NUMBER(10)  NULL;




select distinct v.unitid as unitid,org.stdname as unit,org.stdcode as unitcode from gl_voucher v
         left join md_org org on v.unitid = org.recid
         
SELECT distinct v.unitid as unitid FROM gl_voucher v

SELECT * FROM GL_VOUCHER gv WHERE gv.UNITID IS NULL ;

SELECT * FROM GAMS_ASSETCARD ga
  