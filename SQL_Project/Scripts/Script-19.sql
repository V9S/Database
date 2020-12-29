-- oracle 
alter table GAMS2_WORKFLOW_DEFINITION drop column ORG_ID;
alter table GAMS2_WORKFLOW_DEFINITION add ORG_ID clob;
alter table GAMS2_WORKFLOW drop column ORG_ID;
alter table GAMS2_WORKFLOW add ORG_ID clob;
alter table GAMS2_WORKFLOW_CONFIG drop column USINGUNIT;
alter table GAMS2_WORKFLOW_CONFIG add USINGUNIT clob;