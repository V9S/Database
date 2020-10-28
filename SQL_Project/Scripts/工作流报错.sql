-- Could not find process e4fffce1-1ecd-4d1b-a6b8-db7350576f84 when restoring process instance 46



select * from deploymentstore d where d.DEPLOYMENT_ID like '%e4fffce1-1ecd-4d1b-a6b8-db7350576f84%';

select * from nodeinstancelog n where n.externalId like '%e4fffce1-1ecd-4d1b-a6b8-db7350576f84%';

select * from processinstanceinfo p where p.InstanceId = '46';


-- Could not find process 3960bec0-c509-4abf-98e6-69908f0ff7b8 when restoring process instance 1037

select * from deploymentstore d where d.DEPLOYMENT_ID like '%3960bec0-c509-4abf-98e6-69908f0ff7b8%';

select * from nodeinstancelog n where n.externalId like '%3960bec0-c509-4abf-98e6-69908f0ff7b8%';

select * from nodeinstancelog n where n.externalId like '%3960bec0-c509-4abf-98e6-69908f0ff7b8%' and n.processInstanceId = 1037;

select * from processinstanceinfo p where p.InstanceId = '1037';



-----------------------------------------------------------------------------
select * from deploymentstore d where d.DEPLOYMENT_ID like '%077f9358-b3fb-4bea-a58d-6cdfb7648914%';

select * from nodeinstancelog n where n.externalId like '%077f9358-b3fb-4bea-a58d-6cdfb7648914%';

select * from nodeinstancelog n where n.externalId like '%077f9358-b3fb-4bea-a58d-6cdfb7648914%' and n.processInstanceId = 1044;

select * from processinstanceinfo p where p.InstanceId = '1045';

select * from processinstancelog p where p.processId = '1045';

select * from processinstancelog p where p.externalId like '%077f9358-b3fb-4bea-a58d-6cdfb7648914%'

select id,externalId,processid,processInstanceId,start_date from processinstancelog p where p.externalId like '%077f9358-b3fb-4bea-a58d-6cdfb7648914%'

-- processinstanceinfo表的id保持和processinstancelog表的id相同

alter table processinstanceinfo AUTO_INCREMENT=1060
