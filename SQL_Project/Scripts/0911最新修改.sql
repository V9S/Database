ALTER TABLE GAMS_SYS_LOG ADD os varchar(30 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD requestUrl varchar(300 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD ISP varchar(100 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD ipLocation varchar(100 char)  NULL;

ALTER TABLE GAMS_SYS_LOG ADD realIP varchar(20 char)  NULL;



SELECT * FROM gams_query_task;

SELECT * FROM GAMS_SYS_LOG gsl ;

SELECT * FROM GAMS_JC_FUNDNUMBER gjf ;

