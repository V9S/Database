--DROP  TABLE GAMS_CARD_CHANGE ;
--CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM GAMS_CARD_CHANGE_TEMP ;

CREATE TABLE GAMS_CARD_CHANGE_TEMP AS SELECT * FROM GAMS_CARD_CHANGE;

--������ԱǨ�Ʋ��Կ�
--CREATE TABLE GAMS_CARD_CHANGEcq AS SELECT * FROM GAMS_CARD_CHANGE;
--
--CREATE TABLE GAMS_CARD_CHANGE_TEMPcq AS SELECT * FROM GAMS_CARD_CHANGE_TEMP;
--
--CREATE TABLE GAMS_CARD_CHANGETESTcq AS SELECT * FROM GAMS_CARD_CHANGETEST;

----�����Ͽ�
--CREATE TABLE GAMS_CARD_CHANGEold AS SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE;
----�����¿�
--CREATE TABLE GAMS_CARD_CHANGEnew AS SELECT * FROM CQDZGCZYXY_ZCGL.GAMS_CARD_CHANGE;
SELECT 'drop table '||table_name||' cascade constraints;' FROM USER_TABLES;

SELECT * FROM NP_PASSWORD np ;

UPDATE NP_PASSWORD SET PASSWORD = 'e10adc3949ba59abbe56e057f20f883e';

DELETE FROM GAMS_CARD_CHANGE gcc WHERE JIZRQ < to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss') AND JIZRQ > to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss');

INSERT INTO GAMS_CARD_CHANGE 
SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGEcq gcc WHERE JIZRQ < to_date('2020-12-31 00:00:00','yyyy-mm-dd HH24:mi:ss') AND JIZRQ > to_date('2016-01-01 00:00:00','yyyy-mm-dd HH24:mi:ss');

