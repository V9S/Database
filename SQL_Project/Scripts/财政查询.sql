define query  zczz(@UNITID guid,@RQ1 date,@RQ2 date)
begin 
with (
 select t.recid,t.objectid,t.jizrq,t.sortgbid,t.cardstate,t.yewxlh from gams_assetcard as t 
 where t.auditstate =2 and t.orgunit in (@UNITID) and truncday(t.jizrq)<=@RQ2 --and t.cardstate in ('00','01','02','03')
) as acardtemp

select 
      asort.recid as sortid,
      asort.stdname as zclb,
      CASE WHEN asort.stdcode in ('01') THEN '——' ELSE to_char(coalesce(sum(qc.qcsl), 0)) END as qcsl, coalesce(sum(qc.qcjz), 0) as qcjz,
      CASE WHEN asort.stdcode in ('01') THEN '——' ELSE to_char(coalesce(sum(zj.zjsl), 0)) END as zjsl, coalesce(sum(zj.zjjz), 0) as zjjz,
      CASE WHEN asort.stdcode in ('01') THEN '——' ELSE to_char(coalesce(sum(js.jssl), 0)) END as jssl, coalesce(sum(js.jsjz), 0) as jsjz,
      CASE WHEN asort.stdcode in ('01') THEN '——' ELSE to_char(coalesce(sum(qm.qmsl), 0)) END as qmsl, coalesce(sum(qm.qmjz), 0) as qmjz,
	   coalesce(sum(depdetqc.qcleijzj), 0) as qcleijzj,
      (sum(coalesce(depdetzj.zjleijzj, 0)+coalesce(flbdjsleijzj.flbdjsleijzj, 0))) as zjleijzj,
	  sum(coalesce(depdetzj.cctzzj, 0)+coalesce(flbdjsleijzj.flbdjsleijzj, 0)) as cctzzj,
	  abs(sum(coalesce(depdetzj.cctzjs, 0))) as cctzjs,
	  coalesce(sum(depdetzj.jtzj), 0) as jtzj,
	  coalesce(sum(depdetzj.btzj), 0) as btzj,
	  abs(coalesce(sum(depdetzj.cjzj), 0)) as cjzj,
      coalesce(sum(depdetjs.jsleijzj), 0) as jsleijzj,
      coalesce(sum(depdetqm.qmleijzj), 0) as qmleijzj,
      (coalesce(sum(qm.qmjz),0)-coalesce(sum(depdetqm.qmleijzj),0)) as jingz,
      (coalesce(sum(qc.qcjz),0)-coalesce(sum(depdetqc.qcleijzj),0)) as qcjingz
from  gams_jc_assetsort_gb as asort 
    
--期初
      left join 
          (
            SELECT
	      card.Sortgbid as zicdl ,
              sum(coalesce(case when card.sortgbid not in ('3711F0FCC0000001BFFFD450E0E1A606') then card.shul else card.mianj end,0 )) as qcsl ,
	      sum(coalesce(card.jiaz,0)) as qcjz
            FROM  "GAMS_ASSETCARD" AS  card
              left join (select max(t.yewxlh) as y, t.OBJECTID as OBJECTID
				 from GAMS_ASSETCARD as t
				 where  truncday(t."JIZRQ") <@RQ1  AND t."ORGUNIT" IN (@UNITID) 
				 group by t.OBJECTID
			   ) as tt  on card.objectid = tt.OBJECTID 
             WHERE 1=1 
                   AND card."YEWXLH" = tt.y
                   AND truncday(card."JIZRQ") < @RQ1
                   AND card."ORGUNIT" IN (@UNITID) 
                   and card."CARDSTATE" like '0%'
                   and card."JIAZ" <>0
                   and card."AUDITSTATE" = '2'
            group by card.sortgbid
          ) as qc 
           on asort.recid = qc.zicdl
--本期增加
      left join 
         (select bdcard.Sortgbid as zicdl,sum(case when bdcard.sortgbid not in ('3711F0FCC0000001BFFFD450E0E1A606')  --and bdcard.ZicflCode not like '103%'  
then bdcard.shulz else bdcard.mianjz end ) as zjsl,
            sum(coalesce(bdcard.jiazz,0)) as zjjz
           from GAMS_ASSETCARDCHANGE_NEW as bdcard 
           where bdcard.orgunit in (@UNITID)
              and (bdcard.SORTGBID is not null)
                 and truncday(bdcard.JIZRQ) >= @RQ1
                 and truncday(bdcard.JIZRQ) <= @RQ2
                 --and bdcard.qudfsid in (@qudfsid)
                 --and bdcard.chuzxsid in (@chuzxsid)
				 
           group by bdcard.Sortgbid) as zj 
           on asort.recid = zj.zicdl
--本期减少
      left join 
         (select bdcard.Sortgbid as zicdl ,sum(case when bdcard.sortgbid not in ('3711F0FCC0000001BFFFD450E0E1A606')  --and bdcard.ZicflCode not like '103%'  
then bdcard.shulj else bdcard.mianjj end ) as jssl,
           sum(coalesce(bdcard.jiazj,0)) as jsjz
           from GAMS_ASSETCARDCHANGE_NEW as bdcard 
           where bdcard.orgunit in (@UNITID)
               and (bdcard.SORTGBID is not null)
                 and truncday(bdcard.JIZRQ) >= @RQ1
                 and truncday(bdcard.JIZRQ) <= @RQ2
                 --and bdcard.qudfsid in (@qudfsid)
                 --and bdcard.chuzxsid in (@chuzxsid)
           group by bdcard.Sortgbid) as js 
           on asort.recid = js.zicdl
--期末
      left join 
        (
            SELECT
	      card.Sortgbid as zicdl ,
              sum(coalesce(case when card.sortgbid not in ('3711F0FCC0000001BFFFD450E0E1A606') then card.shul else card.mianj end,0 )) as qmsl ,
	      sum(coalesce(card.jiaz,0)) as qmjz
            FROM  "GAMS_ASSETCARD" AS  card
              left join (select max(t.yewxlh) as y, t.OBJECTID as OBJECTID
				 from GAMS_ASSETCARD as t
				 where  truncday(t."JIZRQ") <=@RQ2  AND t."ORGUNIT" IN (@UNITID) 
				 group by t.OBJECTID
			   ) as tt  on card.objectid = tt.OBJECTID 
             WHERE 1=1 
                   AND card."YEWXLH" = tt.y
                   AND truncday(card."JIZRQ") <= @RQ2
                   AND card."ORGUNIT" IN (@UNITID) 
                   and card."CARDSTATE" like '0%'
                   and card."JIAZ" <>0
                   and card."AUDITSTATE" = '2'
            group by card.sortgbid
         ) as qm 
           on asort.recid = qm.zicdl
--累计折旧期初
     left join  
          (select card.sortgbid as sortgbid,sum(detail.zhejje) as qcleijzj
             from gams_assetdeprecdetail as detail
             left join (select t.recid,t.objectid,t.jizrq,t.sortgbid,t.cardstate from acardtemp as t
			 left join (select max(temp.yewxlh) as yewxlh,temp.objectid as objectid from gams_assetcard as temp where temp.orgunit in (@UNITID) and truncday(temp.jizrq)<@RQ1
				group by temp.objectid
				) as temp on temp.objectid=t.objectid where temp.yewxlh=t.yewxlh) as card
             on detail.cardobjectid= card.objectid    
			  where card.cardstate in ('00','01','02','03')
                                 and "detail".orgunit  in (@UNITID )
                                 and "detail".jizqj<to_char(@RQ1,'yyyyMM')
             group by card.sortgbid
             ) as depdetqc
           on depdetqc.sortgbid= asort.recid

--累计折旧增加
     left join  
          (select card.sortgbid as sortgbid,
		  sum(case when detail.zjtqfs ='29' and detail.zhejje>0 then 0 else detail.zhejje end) as zjleijzj,
		  sum(case when (detail.zjtqfs in('22','24','27','30') or (detail.zjtqfs='92' and detail.jizqj>=202001)) and detail.zhejje>0 then detail.zhejje else 0 end) as cctzzj,
		  sum(case when (detail.zjtqfs in('23','25','26','27','29','30') or (detail.zjtqfs='92' and detail.jizqj>=202001)) and detail.zhejje<0 then detail.zhejje else 0 end) as cctzjs,
		  sum(case when detail.zjtqfs in('31','32') and detail.zhejje>0 then detail.zhejje else 0 end) as jtzj,
		  sum(case when (detail.zjtqfs in('11','12','13','21','28','41','91') or (detail.zjtqfs='92' and detail.jizqj<202001)) and detail.zhejje>0 then detail.zhejje else 0 end) as btzj,
		  sum(case when (detail.zjtqfs in('21','28','42') or (detail.zjtqfs='92' and detail.jizqj<202001)) and detail.zhejje<0 then detail.zhejje else 0 end) as cjzj
             from gams_assetdeprecdetail as detail
             left join gams_assetcard as card
             on detail.cardrecid= card.recid    
		    --      where card.cardstate in ('00','01','02','03')
             where "detail".orgunit  in (@UNITID )
                     and "detail".jizqj>=to_char(@RQ1,'yyyyMM')
                     and "detail".jizqj<=to_char(@RQ2,'yyyyMM')
             group by card.sortgbid
             ) as depdetzj
           on depdetzj.sortgbid= asort.recid
--分类变动累计折旧增加
     left join  
          (select cc.sortgbid as sortgbid,
		  sum(detail.zhejje) as flbdjsleijzj
             from gams_assetdeprecdetail as detail
             left join gams_assetcard as card
             on detail.cardrecid= card.recid 
             left join gams_assetcard as cc
             on card.objectid=cc.objectid  and card.yewxlh=cc.yewxlh-1
		    --      where card.cardstate in ('00','01','02','03')
             where "detail".orgunit  in (@UNITID )
                     and "detail".jizqj>=to_char(@RQ1,'yyyyMM')
                     and "detail".jizqj<=to_char(@RQ2,'yyyyMM')
					 and "detail".zjtqfs='29'
					 and "detail".zhejje>0
             group by cc.sortgbid
             ) as flbdjsleijzj
           on flbdjsleijzj.sortgbid= asort.recid
 --累计折旧减少
      left join 
          (
select card.sortgbid as sortgbid,
		  sum(detail.zhejje) as jsleijzj
             from (select t.recid,t.objectid,t.jizrq,t.sortgbid,t.cardstate from acardtemp as t
			 right join (select max(temp.yewxlh) as yewxlh,temp.objectid as objectid from gams_assetcard as temp where temp.orgunit in (@UNITID) and truncday(temp.jizrq)>=@RQ1 and truncday(temp.jizrq)<=@RQ2
				group by temp.objectid
				) as temp on (temp.objectid=t.objectid and temp.yewxlh=t.yewxlh) where t.cardstate in('10','14','15','16','17')) as card
			left join gams_assetdeprecdetail as detail
             on detail.cardobjectid= card.objectid
             where detail.orgunit  in (@UNITID )
                     and detail.jizqj<=to_char(@RQ2,'yyyyMM')
             group by card.sortgbid
  ) as  depdetjs
on      depdetjs.sortgbid=asort.recid
 --累计折旧期末
     left join  
          (select card.sortgbid as sortgbid,sum(detail.zhejje) as qmleijzj
             from gams_assetdeprecdetail as detail
             left join (select t.recid,t.objectid,t.jizrq,t.sortgbid,t.cardstate from acardtemp as t
			 left join (select max(temp.yewxlh) as yewxlh,temp.objectid as objectid from gams_assetcard as temp where temp.orgunit in (@UNITID) and truncday(temp.jizrq)<=@RQ2
				group by temp.objectid
				) as temp on temp.objectid=t.objectid where temp.yewxlh=t.yewxlh) as card
             on detail.cardobjectid= card.objectid    
		         where card.cardstate in ('00','01','02','03')			
                            and "detail".orgunit  in (@UNITID )
                            and "detail".jizqj<=to_char(@RQ2,'yyyyMM') 
             group by card.sortgbid
             ) as depdetqm
           on depdetqm.sortgbid= asort.recid
where 
--asort.recid in (@dlid)  and 
@RQ1 <= @RQ2
group by asort.stdcode,asort.stdname, asort.recid
-- having ( 
--      coalesce(sum(qc.qcsl), 0)+ coalesce(sum(qc.qcjz), 0)+
--      coalesce(sum(zj.zjsl), 0)+ coalesce(sum(zj.zjjz), 0)+
--      coalesce(sum(js.jssl), 0)+ coalesce(sum(js.jsjz), 0)+
--      coalesce(sum(qm.qmsl), 0)+ coalesce(sum(qm.qmjz), 0))>0
 order by asort.stdcode
end 