
/*Ҫ��֤������������Ҫoracle���ݿ�gams2_workflow_definition������У��㷢���Ľ������̰汾��gams2_workflow���ñ��У�ÿ����һ�������̰汾������һ�����������½��˰汾һ��
ͬʱ������汾Ҫ��mysql���ݿ���deploymentstore��汾һ�£�ͬʱ�ͱ������ɰ汾һ��*/


select * from deploymentstore d where d.DEPLOYMENT_ID like '%7c9e03f3-b85a-4587-889f-f45ef5afb708%';

select * from nodeinstancelog n where n.processId = '7c9e03f3-b85a-4587-889f-f45ef5afb708';

select * from processinstanceinfo p where p.processId = '7c9e03f3-b85a-4587-889f-f45ef5afb708';

select * from variableinstancelog v where v.processId = '7c9e03f3-b85a-4587-889f-f45ef5afb708' and v.log_date > '2020-9-14 0:0:0.0'  ;

select * from nodeinstancelog n where n.nodeId = '12ddabe2-9b01-4460-b4b3-470f334342e2' and n.processInstanceId = '947';

select * from workiteminfo w where w.processInstanceId = '946';

select * from nodeinstancelog n order by n.workItemId desc;

alter table workiteminfo AUTO_INCREMENT=2856;
