HKJZCGL.FKNYBT1MW5AT91TMCHL7PUWQ46N
HKJZCGL.FKNYBT1MW5AT91TMCHL7PUWQ46N



SELECT A.constraint_name, A.table_name, b.constraint_name
  FROM user_constraints A, user_constraints b
 WHERE A.constraint_type = 'R'
   AND b.constraint_type = 'P'
   AND A.r_constraint_name = b.constraint_name
   AND A.constraint_name = UPPER('FK2XBEYCFSEEYCSE9YOR2SCP4OP')
   
   SYS_C00134019
   
   SELECT * FROM GAMS_INVOICE
   
   DELETE FROM GAMS_INVOICE
   
   CREATE TABLE GAMS_CARD_OUTLAY_b AS SELECT * FROM GAMS_CARD_OUTLAY
   
   SELECT * FROM GAMS_CARD_BAK gcb 
   
   GAMS_CARD_INVOICE
   
ALTER TABLE HKJZCGL.GAMS_CARD_INVOICE DROP CONSTRAINT FK2XBEYCFSEEYCSE9YOR2SCP4OP;
ALTER TABLE HKJZCGL.GAMS_OUTLAY DROP COLUMN RECVER;


--����������------------------------------------------------------------------

alter table gams2_workflow_process_ins rename column parameters to PARAMETERSTMP;
--�½�����Ϊclob�����ֶ�
alter table gams2_workflow_process_ins add parameters clob;
--�����ֶ�����ת�Ƶ����ֶ���
update gams2_workflow_process_ins e set e.parameters = e.parameterstmp;
--ɾ�����ֶ�
ALTER TABLE gams2_workflow_process_ins SET UNUSED(parameterstmp);
ALTER TABLE gams2_workflow_process_ins DROP UNUSED COLUMN;

alter table gams2_workflow_common_task rename column parameters to PARAMETERSTMP;
--�½�����Ϊclob�����ֶ�
alter table gams2_workflow_common_task add parameters clob;
--�����ֶ�����ת�Ƶ����ֶ���
update gams2_workflow_common_task e set e.parameters = e.parameterstmp;
--ɾ�����ֶ�
ALTER TABLE gams2_workflow_common_task SET UNUSED(parameterstmp);
ALTER TABLE gams2_workflow_common_task DROP UNUSED COLUMN;

--���̷�������
update gams2_workflow_config w
   set type      = 'INTERNAL',
       w.content = replace(w.content, 'SUB', 'INTERNAL')
       
       
SELECT * FROM GAMS_JC_DEPARTMENT gjd ORDER BY gjd.CODE ;  

-- CQDZGCZYXY_ZCGL.TEST source

