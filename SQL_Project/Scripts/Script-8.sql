--DROP  TABLE GAMS_CARD_CHANGE ;
--CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM GAMS_CARD_CHANGE_TEMP ;
--CREATE TABLE GAMS_CARD_CHANGE0423 AS SELECT * FROM GAMS_CARD_CHANGE gcc ;
--DROP TABLE GAMS_CARD_CHANGE ;
--CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM GAMS_CARD_CHANGE0423 gcc ;

--CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGEcq gcc ;

--DROP TABLE GAMS_CARD_CHANGE;
--DROP TABLE GAMS_CARD_CHANGE_TEMP;
--CREATE TABLE GAMS_CARD_CHANGE_TEMP AS SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGE_TEMPcq;
--
--CREATE TABLE GAMS_CARD_CHANGE AS  SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGEold ;

CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM GAMS_CARD_CHANGE0407_T;

CREATE TABLE GAMS_CARD_CHANGE AS SELECT * FROM CQDZGCZYXY_ZCGL_TEST.GAMS_CARD_CHANGEnew;

SELECT * FROM GAMS_CARD_CHANGE0422 gcc ;

SELECT * FROM GAMS_CARD_CHANGE0407 gcc ;

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTIME > to_date('2021-04-07 00:00:00','yyyy-mm-dd HH24:mi:ss') ;

SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTIME > to_date('2021-04-07 00:00:00','yyyy-mm-dd HH24:mi:ss') AND gcc.BIZTIME < to_date('2021-04-08 00:00:00','yyyy-mm-dd HH24:mi:ss');

SELECT * FROM GAMS_CARD_CHANGE0407 gcc WHERE gcc.ID IN ('CF02355270D54FC59165EA74D608D2D7',
'16B535A64B1E46C2BE517AF7110E3AFC');

CREATE TABLE GAMS_CARD_CHANGE_t AS SELECT * FROM GAMS_CARD_CHANGE gcc WHERE gcc.BIZTIME > to_date('2021-04-07 00:00:00','yyyy-mm-dd HH24:mi:ss');

CREATE TABLE GAMS_CARD_CHANGE0407_t AS SELECT * FROM GAMS_CARD_CHANGE0407;

DROP TABLE GAMS_CARD_CHANGE0407_T;
DROP TABLE GAMS_CARD_CHANGE_t;

INSERT INTO GAMS_CARD_CHANGE_t SELECT * FROM GAMS_CARD_CHANGE0407_T;

INSERT INTO GAMS_CARD_CHANGE0407_T SELECT * FROM GAMS_CARD_CHANGE_t;

SELECT * FROM GAMS_CARD_CHANGE_t;

SELECT count(1),BIANDCZSXH FROM GAMS_CARD_CHANGE0407_T gcct GROUP BY BIANDCZSXH ;

SELECT SHUL FROM GAMS_CARD_CHANGE0407_T gcct WHERE  SHUL IS NULL ;
SELECT SHUL_J FROM GAMS_CARD_CHANGE0407_T gcct WHERE SHUL_J IS NULL ;
SELECT SHUL_Z FROM GAMS_CARD_CHANGE0407_T gcct WHERE SHUL_Z IS NULL ;

UPDATE GAMS_CARD_CHANGE0407_T SET SHUL_J = '999' WHERE SHUL_J IS NULL ;
UPDATE GAMS_CARD_CHANGE0407_T SET SHUL_Z = '999' WHERE SHUL_Z IS NULL ;
UPDATE GAMS_CARD_CHANGE0407_T SET BIANDCZSXH = '999' WHERE BIANDCZSXH IS NULL ;

SELECT *  FROM gams_jc_peizfl ;



