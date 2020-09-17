
/*要保证工作流正常，要oracle数据库gams2_workflow_definition这个表中，你发布的建账流程版本和gams2_workflow（该表中，每发布一次新流程版本，新增一条）表中最新建账版本一致
同时，这个版本要和mysql数据库中deploymentstore表版本一致，同时和本地生成版本一致*/


select * from deploymentstore d where d.DEPLOYMENT_ID like '%7c9e03f3-b85a-4587-889f-f45ef5afb708%';

select * from nodeinstancelog n where n.processId = '7c9e03f3-b85a-4587-889f-f45ef5afb708';

select * from processinstanceinfo p where p.processId = '7c9e03f3-b85a-4587-889f-f45ef5afb708';

select * from variableinstancelog v where v.processId = '7c9e03f3-b85a-4587-889f-f45ef5afb708' and v.log_date > '2020-9-14 0:0:0.0'  ;

select * from nodeinstancelog n where n.nodeId = '12ddabe2-9b01-4460-b4b3-470f334342e2' and n.processInstanceId = '947';

select * from workiteminfo w where w.processInstanceId = '946';

select * from nodeinstancelog n order by n.workItemId desc;

alter table workiteminfo AUTO_INCREMENT=2856;
