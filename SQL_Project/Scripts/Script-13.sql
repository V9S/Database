SELECT * FROM NP_USER nu WHERE nickname = '�ܾ�'; 

--����		2016010053
--�ܾ�		2009010035
--ţ��		1994000060

SELECT * FROM GAMS_REIMBURSE gr WHERE gr.BILL_CODE = 'DJJZ202000001014'

SELECT count(1),gjx.TITLE FROM GAMS_CARD_TYSB gc LEFT JOIN GAMS_JC_XUEK gjx  ON gjx.id = gc.XUEK WHERE gc.XUEK IS NOT NULL GROUP BY gjx.TITLE ;

SELECT * FROM GAMS_JC_XUEK gjx ;

SELECT * FROM GAMS_CARD gc WHERE gc.XUEK IS NULL ;

SELECT * FROM NP_USER nu WHERE nu.NICKNAME = '����';

SELECT * FROM NP_PASSWORD np WHERE np.USERNAME  = '2016010053';

UPDATE NP_PASSWORD SET PASSWORD = 'e10adc3949ba59abbe56e057f20f883e';

SELECT * FROM GAMS_JC_XUEK gjx;

UPDATE GAMS_JC_XUEK SET enable = 1;

SELECT count(1),gjai.carddefinename FROM GAMS_JC_ASSETCLASS_IND gjai GROUP BY gjai.carddefinename;

update gams_jc_assetclass_ind
          set carddefinename = 'com.jiuqi.np.gams2.business.form.dynamic_card.gams_asset_card_cl'
        where carddefinename = 'com.jiuqi.np.gams2.core.gams_card_cl';
        
SELECT * FROM gams_basedatametadata_mark WHERE TABLENAME = 'gams_jc_xuek';

SELECT * FROM GAMS_BASEDATA_DEFINE gbd WHERE gbd.name = 'gams_jc_xuek';

INSERT INTO GAMS_BASEDATA_DEFINE values(sys_guid(),'gams_jc_xuek','ѧ��','com.jiuqi.np.gams2.basedata.gams_jc_xuek','1')

