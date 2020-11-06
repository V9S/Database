select
	'delete from ' + name + ';'
from
	sysobjects
where
	xtype = 'U'
	AND NAME LIKE 'zc%';

insert
	into
	ZC_XX(YWDH, BH, RZRQ, JSR, BMMC, BMBH, XMBH, ISZCJZ, ISZT, ZJFF, ISDL, ZJFS, INPUTTIME, gdzcmc, dj, synx, zclbdm1, zclbmxdm, gdzcdm, sl, zclbmxdm1, je, zclbdm)
values('ZYBD2020000023', '1', '20191226', '冯维思', '工程与鉴定中心', '0026007', '011115',
'1', '0', 'P', '0', '11', '2020-11-03 20:27:44','微型台式电子计算机',null,'0','05','2010104','TY2019000167','1','0501010506','5200.00','02');

{gdzcmc=, dj=null, synx=0, zclbdm1=05, zclbmxdm=2010104, gdzcdm=TY2019000167, sl=1, zclbmxdm1=0501010506, je=5200.00, zclbdm=02}

delete from zc_bmbd;
delete from zc_dzfp;
delete from zc_dzfpmx;
delete from zc_gwkjyxx;
delete from zc_htxx;
delete from zc_htxx_fj;
delete from zc_jzcl;
delete from zc_tkxx;
delete from zc_xmdjmx;
delete from zc_xmeddjmx;
delete from zc_xx;
delete from zc_ywlx;
delete from zc_zcjf;
delete from zc_zczj;
delete from zc_zczj_lb;
delete from zc_zczj_yt;
delete from zc_zfxx;