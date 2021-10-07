--<ScriptOptions statementTerminator=";"/>

ALTER TABLE "SAMP"."EMP_RESUME" DROP CONSTRAINT "SQL051121035926090";

ALTER TABLE "SAMP"."EMP_PHOTO" DROP CONSTRAINT "SQL051121035928380";

DROP INDEX "SYS"."SYSTRIGGERS_INDEX2";

DROP INDEX "SYS"."SYSSTATISTICS_INDEX1";

DROP INDEX "SYS"."SYSCONSTRAINTS_INDEX2";

DROP INDEX "SYS"."SYSSCHEMAS_INDEX2";

DROP INDEX "SYS"."SYSVIEWS_INDEX1";

DROP INDEX "SAMP"."SQL051121035926090";

DROP INDEX "SYS"."SYSCONGLOMERATES_INDEX3";

DROP INDEX "SYS"."SYSCOLUMNS_INDEX2";

DROP INDEX "SYS"."SYSDEPENDS_INDEX2";

DROP INDEX "SYS"."SYSFILES_INDEX1";

DROP INDEX "SYS"."SYSCOLUMNS_INDEX1";

DROP INDEX "SAMP"."PROJ_IDX";

DROP INDEX "SYS"."SYSALIASES_INDEX2";

DROP INDEX "SYS"."SYSTRIGGERS_INDEX1";

DROP INDEX "SYS"."SYSCHECKS_INDEX1";

DROP INDEX "SYS"."SYSCONSTRAINTS_INDEX1";

DROP INDEX "SYS"."SYSFILES_INDEX2";

DROP INDEX "SYS"."SYSFOREIGNKEYS_INDEX1";

DROP INDEX "SYS"."SYSSTATEMENTS_INDEX2";

DROP INDEX "SYS"."SYSCONGLOMERATES_INDEX1";

DROP INDEX "SYS"."SYSDEPENDS_INDEX1";

DROP INDEX "SYS"."SYSSCHEMAS_INDEX1";

DROP INDEX "SYS"."SYSTABLES_INDEX1";

DROP INDEX "SYS"."SYSSTATEMENTS_INDEX1";

DROP INDEX "SYS"."SYSFOREIGNKEYS_INDEX2";

DROP INDEX "SYS"."SYSKEYS_INDEX1";

DROP INDEX "SYS"."SYSCONGLOMERATES_INDEX2";

DROP INDEX "SYS"."SYSCONSTRAINTS_INDEX3";

DROP INDEX "SAMP"."EMP_IDX";

DROP INDEX "SAMP"."SQL051121035928380";

DROP INDEX "SYS"."SYSALIASES_INDEX3";

DROP INDEX "SYS"."SYSALIASES_INDEX1";

DROP INDEX "SYS"."SYSTRIGGERS_INDEX3";

DROP INDEX "SAMP"."DEP_IDX";

DROP INDEX "SYS"."SYSTABLES_INDEX2";

DROP TABLE "SYS"."SYSCHECKS";

DROP TABLE "SYS"."SYSVIEWS";

DROP TABLE "SAMP"."EMPLOYEE";

DROP TABLE "SYSIBM"."SYSDUMMY1";

DROP TABLE "SYS"."SYSTRIGGERS";

DROP TABLE "SAMP"."ORG";

DROP TABLE "SYS"."SYSSTATEMENTS";

DROP TABLE "SYS"."SYSTABLES";

DROP TABLE "SYS"."SYSSTATISTICS";

DROP TABLE "SYS"."SYSSCHEMAS";

DROP TABLE "SAMP"."IN_TRAY";

DROP TABLE "SAMP"."STAFF";

DROP TABLE "SAMP"."SALES";

DROP TABLE "SYS"."SYSCONSTRAINTS";

DROP TABLE "SAMP"."EMP_ACT";

DROP TABLE "SAMP"."DEPARTMENT";

DROP TABLE "SYS"."SYSALIASES";

DROP TABLE "SAMP"."EMP_RESUME";

DROP TABLE "SAMP"."PROJECT";

DROP TABLE "SYS"."SYSFOREIGNKEYS";

DROP TABLE "SAMP"."EMP_PHOTO";

DROP TABLE "SYS"."SYSCOLUMNS";

DROP TABLE "SAMP"."CL_SCHED";

DROP TABLE "SYS"."SYSDEPENDS";

DROP TABLE "SYS"."SYSKEYS";

DROP TABLE "SYS"."SYSCONGLOMERATES";

DROP TABLE "SYS"."SYSFILES";

CREATE TABLE "SYS"."SYSCHECKS" (
		"CONSTRAINTID" CHAR(36) NOT NULL,
		"CHECKDEFINITION" LONG VARCHAR NOT NULL,
		"REFERENCEDCOLUMNS" null NOT NULL
	);

CREATE TABLE "SYS"."SYSVIEWS" (
		"TABLEID" CHAR(36) NOT NULL,
		"VIEWDEFINITION" LONG VARCHAR NOT NULL,
		"CHECKOPTION" CHAR(1) NOT NULL,
		"COMPILATIONSCHEMAID" CHAR(36) NOT NULL
	);

CREATE TABLE "SAMP"."EMPLOYEE" (
		"EMPNO" CHAR(6) NOT NULL,
		"FIRSTNME" VARCHAR(12) NOT NULL,
		"MIDINIT" CHAR(1) NOT NULL,
		"LASTNAME" VARCHAR(15) NOT NULL,
		"WORKDEPT" CHAR(3),
		"PHONENO" CHAR(4),
		"HIREDATE" DATE,
		"JOB" CHAR(8),
		"EDLEVEL" SMALLINT NOT NULL,
		"SEX" CHAR(1),
		"BIRTHDATE" DATE,
		"SALARY" DECIMAL(9 , 2),
		"BONUS" DECIMAL(9 , 2),
		"COMM" DECIMAL(9 , 2)
	);

CREATE TABLE "SYSIBM"."SYSDUMMY1" (
		"IBMREQD" CHAR(1)
	);

CREATE TABLE "SYS"."SYSTRIGGERS" (
		"TRIGGERID" CHAR(36) NOT NULL,
		"TRIGGERNAME" VARCHAR(128) NOT NULL,
		"SCHEMAID" CHAR(36) NOT NULL,
		"CREATIONTIMESTAMP" TIMESTAMP NOT NULL,
		"EVENT" CHAR(1) NOT NULL,
		"FIRINGTIME" CHAR(1) NOT NULL,
		"TYPE" CHAR(1) NOT NULL,
		"STATE" CHAR(1) NOT NULL,
		"TABLEID" CHAR(36) NOT NULL,
		"WHENSTMTID" CHAR(36),
		"ACTIONSTMTID" CHAR(36),
		"REFERENCEDCOLUMNS" null,
		"TRIGGERDEFINITION" LONG VARCHAR,
		"REFERENCINGOLD" null,
		"REFERENCINGNEW" null,
		"OLDREFERENCINGNAME" VARCHAR(128),
		"NEWREFERENCINGNAME" VARCHAR(128)
	);

CREATE TABLE "SAMP"."ORG" (
		"DEPTNUMB" SMALLINT NOT NULL,
		"DEPTNAME" VARCHAR(14),
		"MANAGER" SMALLINT,
		"DIVISION" VARCHAR(10),
		"LOCATION" VARCHAR(13)
	);

CREATE TABLE "SYS"."SYSSTATEMENTS" (
		"STMTID" CHAR(36) NOT NULL,
		"STMTNAME" VARCHAR(128) NOT NULL,
		"SCHEMAID" CHAR(36) NOT NULL,
		"TYPE" CHAR(1) NOT NULL,
		"VALID" null NOT NULL,
		"TEXT" LONG VARCHAR NOT NULL,
		"LASTCOMPILED" TIMESTAMP,
		"COMPILATIONSCHEMAID" CHAR(36) NOT NULL,
		"USINGTEXT" LONG VARCHAR
	);

CREATE TABLE "SYS"."SYSTABLES" (
		"TABLEID" CHAR(36) NOT NULL,
		"TABLENAME" VARCHAR(128) NOT NULL,
		"TABLETYPE" CHAR(1) NOT NULL,
		"SCHEMAID" CHAR(36) NOT NULL,
		"LOCKGRANULARITY" CHAR(1) NOT NULL
	);

CREATE TABLE "SYS"."SYSSTATISTICS" (
		"STATID" CHAR(36) NOT NULL,
		"REFERENCEID" CHAR(36) NOT NULL,
		"TABLEID" CHAR(36) NOT NULL,
		"CREATIONTIMESTAMP" TIMESTAMP NOT NULL,
		"TYPE" CHAR(1) NOT NULL,
		"VALID" null NOT NULL,
		"COLCOUNT" INTEGER NOT NULL,
		"STATISTICS" null NOT NULL
	);

CREATE TABLE "SYS"."SYSSCHEMAS" (
		"SCHEMAID" CHAR(36) NOT NULL,
		"SCHEMANAME" VARCHAR(128) NOT NULL,
		"AUTHORIZATIONID" VARCHAR(128) NOT NULL
	);

CREATE TABLE "SAMP"."IN_TRAY" (
		"RECEIVED" TIMESTAMP,
		"SOURCE" CHAR(8),
		"SUBJECT" CHAR(64),
		"NOTE_TEXT" VARCHAR(3000)
	);

CREATE TABLE "SAMP"."STAFF" (
		"ID" SMALLINT NOT NULL,
		"NAME" VARCHAR(9),
		"DEPT" SMALLINT,
		"JOB" CHAR(5),
		"YEARS" SMALLINT,
		"SALARY" DECIMAL(7 , 2),
		"COMM" DECIMAL(7 , 2)
	);

CREATE TABLE "SAMP"."SALES" (
		"SALES_DATE" DATE,
		"SALES_PERSON" VARCHAR(15),
		"REGION" VARCHAR(15),
		"SALES" INTEGER
	);

CREATE TABLE "SYS"."SYSCONSTRAINTS" (
		"CONSTRAINTID" CHAR(36) NOT NULL,
		"TABLEID" CHAR(36) NOT NULL,
		"CONSTRAINTNAME" VARCHAR(128) NOT NULL,
		"TYPE" CHAR(1) NOT NULL,
		"SCHEMAID" CHAR(36) NOT NULL,
		"STATE" CHAR(1) NOT NULL,
		"REFERENCECOUNT" INTEGER NOT NULL
	);

CREATE TABLE "SAMP"."EMP_ACT" (
		"EMPNO" CHAR(6) NOT NULL,
		"PROJNO" CHAR(6) NOT NULL,
		"ACTNO" SMALLINT NOT NULL,
		"EMPTIME" DECIMAL(5 , 2),
		"EMSTDATE" DATE,
		"EMENDATE" DATE
	);

CREATE TABLE "SAMP"."DEPARTMENT" (
		"DEPTNO" CHAR(3) NOT NULL,
		"DEPTNAME" VARCHAR(29) NOT NULL,
		"MGRNO" CHAR(6),
		"ADMRDEPT" CHAR(3) NOT NULL,
		"LOCATION" CHAR(16)
	);

CREATE TABLE "SYS"."SYSALIASES" (
		"ALIASID" CHAR(36) NOT NULL,
		"ALIAS" VARCHAR(128) NOT NULL,
		"SCHEMAID" CHAR(36),
		"JAVACLASSNAME" LONG VARCHAR NOT NULL,
		"ALIASTYPE" CHAR(1) NOT NULL,
		"NAMESPACE" CHAR(1) NOT NULL,
		"SYSTEMALIAS" null NOT NULL,
		"ALIASINFO" null,
		"SPECIFICNAME" VARCHAR(128) NOT NULL
	);

CREATE TABLE "SAMP"."EMP_RESUME" (
		"EMPNO" CHAR(6) NOT NULL,
		"RESUME_FORMAT" VARCHAR(10) NOT NULL,
		"RESUME" CLOB(5120)
	);

CREATE TABLE "SAMP"."PROJECT" (
		"PROJNO" CHAR(6) NOT NULL,
		"PROJNAME" VARCHAR(24) NOT NULL,
		"DEPTNO" CHAR(3) NOT NULL,
		"RESPEMP" CHAR(6) NOT NULL,
		"PRSTAFF" DECIMAL(5 , 2),
		"PRSTDATE" DATE,
		"PRENDATE" DATE,
		"MAJPROJ" CHAR(6)
	);

CREATE TABLE "SYS"."SYSFOREIGNKEYS" (
		"CONSTRAINTID" CHAR(36) NOT NULL,
		"CONGLOMERATEID" CHAR(36) NOT NULL,
		"KEYCONSTRAINTID" CHAR(36) NOT NULL,
		"DELETERULE" CHAR(1) NOT NULL,
		"UPDATERULE" CHAR(1) NOT NULL
	);

CREATE TABLE "SAMP"."EMP_PHOTO" (
		"EMPNO" CHAR(6) NOT NULL,
		"PHOTO_FORMAT" VARCHAR(10) NOT NULL,
		"PICTURE" BLOB(102400)
	);

CREATE TABLE "SYS"."SYSCOLUMNS" (
		"REFERENCEID" CHAR(36) NOT NULL,
		"COLUMNNAME" VARCHAR(128) NOT NULL,
		"COLUMNNUMBER" INTEGER NOT NULL,
		"COLUMNDATATYPE" null NOT NULL,
		"COLUMNDEFAULT" null,
		"COLUMNDEFAULTID" CHAR(36),
		"AUTOINCREMENTVALUE" BIGINT,
		"AUTOINCREMENTSTART" BIGINT,
		"AUTOINCREMENTINC" BIGINT
	);

CREATE TABLE "SAMP"."CL_SCHED" (
		"CLASS_CODE" CHAR(7),
		"DAY" SMALLINT,
		"STARTING" TIME,
		"ENDING" TIME
	);

CREATE TABLE "SYS"."SYSDEPENDS" (
		"DEPENDENTID" CHAR(36) NOT NULL,
		"DEPENDENTFINDER" null NOT NULL,
		"PROVIDERID" CHAR(36) NOT NULL,
		"PROVIDERFINDER" null NOT NULL
	);

CREATE TABLE "SYS"."SYSKEYS" (
		"CONSTRAINTID" CHAR(36) NOT NULL,
		"CONGLOMERATEID" CHAR(36) NOT NULL
	);

CREATE TABLE "SYS"."SYSCONGLOMERATES" (
		"SCHEMAID" CHAR(36) NOT NULL,
		"TABLEID" CHAR(36) NOT NULL,
		"CONGLOMERATENUMBER" BIGINT NOT NULL,
		"CONGLOMERATENAME" VARCHAR(128),
		"ISINDEX" null NOT NULL,
		"DESCRIPTOR" null,
		"ISCONSTRAINT" null,
		"CONGLOMERATEID" CHAR(36) NOT NULL
	);

CREATE TABLE "SYS"."SYSFILES" (
		"FILEID" CHAR(36) NOT NULL,
		"SCHEMAID" CHAR(36) NOT NULL,
		"FILENAME" VARCHAR(128) NOT NULL,
		"GENERATIONID" BIGINT NOT NULL
	);

CREATE UNIQUE INDEX "SYS"."SYSTRIGGERS_INDEX2" ON "SYS"."SYSTRIGGERS" ("TRIGGERNAME" ASC, "SCHEMAID" ASC);

CREATE INDEX "SYS"."SYSSTATISTICS_INDEX1" ON "SYS"."SYSSTATISTICS" ("TABLEID" ASC, "REFERENCEID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSCONSTRAINTS_INDEX2" ON "SYS"."SYSCONSTRAINTS" ("CONSTRAINTNAME" ASC, "SCHEMAID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSSCHEMAS_INDEX2" ON "SYS"."SYSSCHEMAS" ("SCHEMAID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSVIEWS_INDEX1" ON "SYS"."SYSVIEWS" ("TABLEID" ASC);

CREATE UNIQUE INDEX "SAMP"."SQL051121035926090" ON "SAMP"."EMP_RESUME" ("EMPNO" ASC, "RESUME_FORMAT" ASC);

CREATE INDEX "SYS"."SYSCONGLOMERATES_INDEX3" ON "SYS"."SYSCONGLOMERATES" ("TABLEID" ASC);

CREATE INDEX "SYS"."SYSCOLUMNS_INDEX2" ON "SYS"."SYSCOLUMNS" ("COLUMNDEFAULTID" ASC);

CREATE INDEX "SYS"."SYSDEPENDS_INDEX2" ON "SYS"."SYSDEPENDS" ("PROVIDERID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSFILES_INDEX1" ON "SYS"."SYSFILES" ("FILENAME" ASC, "SCHEMAID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSCOLUMNS_INDEX1" ON "SYS"."SYSCOLUMNS" ("REFERENCEID" ASC, "COLUMNNAME" ASC);

CREATE UNIQUE INDEX "SAMP"."PROJ_IDX" ON "SAMP"."PROJECT" ("PROJNO" ASC);

CREATE UNIQUE INDEX "SYS"."SYSALIASES_INDEX2" ON "SYS"."SYSALIASES" ("ALIASID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSTRIGGERS_INDEX1" ON "SYS"."SYSTRIGGERS" ("TRIGGERID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSCHECKS_INDEX1" ON "SYS"."SYSCHECKS" ("CONSTRAINTID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSCONSTRAINTS_INDEX1" ON "SYS"."SYSCONSTRAINTS" ("CONSTRAINTID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSFILES_INDEX2" ON "SYS"."SYSFILES" ("FILEID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSFOREIGNKEYS_INDEX1" ON "SYS"."SYSFOREIGNKEYS" ("CONSTRAINTID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSSTATEMENTS_INDEX2" ON "SYS"."SYSSTATEMENTS" ("STMTNAME" ASC, "SCHEMAID" ASC);

CREATE INDEX "SYS"."SYSCONGLOMERATES_INDEX1" ON "SYS"."SYSCONGLOMERATES" ("CONGLOMERATEID" ASC);

CREATE INDEX "SYS"."SYSDEPENDS_INDEX1" ON "SYS"."SYSDEPENDS" ("DEPENDENTID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSSCHEMAS_INDEX1" ON "SYS"."SYSSCHEMAS" ("SCHEMANAME" ASC);

CREATE UNIQUE INDEX "SYS"."SYSTABLES_INDEX1" ON "SYS"."SYSTABLES" ("TABLENAME" ASC, "SCHEMAID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSSTATEMENTS_INDEX1" ON "SYS"."SYSSTATEMENTS" ("STMTID" ASC);

CREATE INDEX "SYS"."SYSFOREIGNKEYS_INDEX2" ON "SYS"."SYSFOREIGNKEYS" ("KEYCONSTRAINTID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSKEYS_INDEX1" ON "SYS"."SYSKEYS" ("CONSTRAINTID" ASC);

CREATE UNIQUE INDEX "SYS"."SYSCONGLOMERATES_INDEX2" ON "SYS"."SYSCONGLOMERATES" ("CONGLOMERATENAME" ASC, "SCHEMAID" ASC);

CREATE INDEX "SYS"."SYSCONSTRAINTS_INDEX3" ON "SYS"."SYSCONSTRAINTS" ("TABLEID" ASC);

CREATE UNIQUE INDEX "SAMP"."EMP_IDX" ON "SAMP"."EMPLOYEE" ("EMPNO" ASC);

CREATE UNIQUE INDEX "SAMP"."SQL051121035928380" ON "SAMP"."EMP_PHOTO" ("EMPNO" ASC, "PHOTO_FORMAT" ASC);

CREATE UNIQUE INDEX "SYS"."SYSALIASES_INDEX3" ON "SYS"."SYSALIASES" ("SCHEMAID" ASC, "SPECIFICNAME" ASC);

CREATE UNIQUE INDEX "SYS"."SYSALIASES_INDEX1" ON "SYS"."SYSALIASES" ("SCHEMAID" ASC, "ALIAS" ASC, "NAMESPACE" ASC);

CREATE INDEX "SYS"."SYSTRIGGERS_INDEX3" ON "SYS"."SYSTRIGGERS" ("TABLEID" ASC, "CREATIONTIMESTAMP" ASC);

CREATE UNIQUE INDEX "SAMP"."DEP_IDX" ON "SAMP"."DEPARTMENT" ("DEPTNO" ASC);

CREATE UNIQUE INDEX "SYS"."SYSTABLES_INDEX2" ON "SYS"."SYSTABLES" ("TABLEID" ASC);

ALTER TABLE "SAMP"."EMP_RESUME" ADD CONSTRAINT "SQL051121035926090" PRIMARY KEY ("EMPNO", "RESUME_FORMAT");

ALTER TABLE "SAMP"."EMP_PHOTO" ADD CONSTRAINT "SQL051121035928380" PRIMARY KEY ("EMPNO", "PHOTO_FORMAT");

