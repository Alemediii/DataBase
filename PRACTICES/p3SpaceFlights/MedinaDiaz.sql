--------------------------------------------------------
-- Archivo creado  - domingo-octubre-20-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INTELLIGENT
--------------------------------------------------------

  CREATE TABLE "UBD1318"."INTELLIGENT" 
   (	"LANGUAGE" VARCHAR2(20 BYTE), 
	"WRITING" VARCHAR2(20 BYTE), 
	"PAINTING" VARCHAR2(2 BYTE), 
	"SOCIALIZING" VARCHAR2(2 BYTE), 
	"SPECIE" NUMBER(5,0), 
	"COMES_FROM" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table LIVES_IN
--------------------------------------------------------

  CREATE TABLE "UBD1318"."LIVES_IN" 
   (	"SPECIE_ID" NUMBER(5,0), 
	"PLANET_ID" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table PLANET
--------------------------------------------------------

  CREATE TABLE "UBD1318"."PLANET" 
   (	"ID" NUMBER(5,0), 
	"NAME" VARCHAR2(30 BYTE), 
	"DIAMETER" NUMBER(9,0), 
	"GALAXY" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Table SPECIE
--------------------------------------------------------

  CREATE TABLE "UBD1318"."SPECIE" 
   (	"ID" NUMBER(5,0), 
	"AVERAGE_HEIGHT" NUMBER(4,2), 
	"AVERAGE_WEIGHT" NUMBER(6,2), 
	"TYPE" VARCHAR2(10 BYTE), 
	"CHARACTER" VARCHAR2(10 BYTE), 
	"SPECIE" NUMBER(5,0), 
	"CONTROLLED_BY" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
REM INSERTING into UBD1318.INTELLIGENT
SET DEFINE OFF;
Insert into UBD1318.INTELLIGENT (LANGUAGE,WRITING,PAINTING,SOCIALIZING,SPECIE,COMES_FROM) values ('Gramatino','Depurate','y','n','10001','22222');
Insert into UBD1318.INTELLIGENT (LANGUAGE,WRITING,PAINTING,SOCIALIZING,SPECIE,COMES_FROM) values ('Levuorin','Begining','y','n','20002','33333');
Insert into UBD1318.INTELLIGENT (LANGUAGE,WRITING,PAINTING,SOCIALIZING,SPECIE,COMES_FROM) values ('Saporo','Unknown','n','n','30003','44444');
Insert into UBD1318.INTELLIGENT (LANGUAGE,WRITING,PAINTING,SOCIALIZING,SPECIE,COMES_FROM) values ('Arabino','Depurate','y','n','40004','55555');
Insert into UBD1318.INTELLIGENT (LANGUAGE,WRITING,PAINTING,SOCIALIZING,SPECIE,COMES_FROM) values ('Aghaga','Depurate','y','y','50005','66666');
Insert into UBD1318.INTELLIGENT (LANGUAGE,WRITING,PAINTING,SOCIALIZING,SPECIE,COMES_FROM) values ('Espatul','Unknown','y','n','60006','77777');
Insert into UBD1318.INTELLIGENT (LANGUAGE,WRITING,PAINTING,SOCIALIZING,SPECIE,COMES_FROM) values ('Forensic',null,'y','y','70007','88888');
REM INSERTING into UBD1318.LIVES_IN
SET DEFINE OFF;
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('10001','22222');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('20002','22222');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('30003','22222');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('40004','33333');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('50005','44444');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('60006','77777');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('70007','88888');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('80008','44444');
Insert into UBD1318.LIVES_IN (SPECIE_ID,PLANET_ID) values ('90009','77777');
REM INSERTING into UBD1318.PLANET
SET DEFINE OFF;
Insert into UBD1318.PLANET (ID,NAME,DIAMETER,GALAXY) values ('22222','Sigfrido','30000','Lexus');
Insert into UBD1318.PLANET (ID,NAME,DIAMETER,GALAXY) values ('33333','Nova Terra','4000','Orion');
Insert into UBD1318.PLANET (ID,NAME,DIAMETER,GALAXY) values ('44444','Esperides','30000','Orion');
Insert into UBD1318.PLANET (ID,NAME,DIAMETER,GALAXY) values ('55555','Sigfrido','22000','Aspen');
Insert into UBD1318.PLANET (ID,NAME,DIAMETER,GALAXY) values ('66666','Andromeda','55000','Orion');
Insert into UBD1318.PLANET (ID,NAME,DIAMETER,GALAXY) values ('77777','XP2002','8000','Orion');
Insert into UBD1318.PLANET (ID,NAME,DIAMETER,GALAXY) values ('88888','Socrates','67000','Lexus');
REM INSERTING into UBD1318.SPECIE
SET DEFINE OFF;
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('10001','2,3','120,4','SEDENTARY',null,null,'70007');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('20002','1,3','120,4','NOMAD','PACIFIC',null,'10001');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('30003','1,3','60,4','NOMAD','PACIFIC',null,'20002');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('40004','2,3','120,4','NOMAD','WARRIOR',null,'30003');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('50005','0,3','10,4','NOMAD','WARRIOR',null,'40004');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('60006','4,3','160,4','SEDENTARY',null,null,'50005');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('70007','2,9','90,48','SEDENTARY',null,null,'60006');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('80008','2,6','100,4','SEDENTARY',null,null,'50005');
Insert into UBD1318.SPECIE (ID,AVERAGE_HEIGHT,AVERAGE_WEIGHT,TYPE,CHARACTER,SPECIE,CONTROLLED_BY) values ('90009','2,5','70,4','SEDENTARY',null,null,'60006');
--------------------------------------------------------
--  DDL for Index INTELLIGENT2_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UBD1318"."INTELLIGENT2_PK" ON "UBD1318"."INTELLIGENT" ("SPECIE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index INTELLIGENT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "UBD1318"."INTELLIGENT_UK1" ON "UBD1318"."INTELLIGENT" ("COMES_FROM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index LIVES_IN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UBD1318"."LIVES_IN_PK" ON "UBD1318"."LIVES_IN" ("SPECIE_ID", "PLANET_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0013187
--------------------------------------------------------

  CREATE UNIQUE INDEX "UBD1318"."SYS_C0013187" ON "UBD1318"."INTELLIGENT" ("LANGUAGE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS" ;
--------------------------------------------------------
--  Constraints for Table INTELLIGENT
--------------------------------------------------------

  ALTER TABLE "UBD1318"."INTELLIGENT" ADD CONSTRAINT "INTELLIGENT2_PK" PRIMARY KEY ("SPECIE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "UBD1318"."INTELLIGENT" ADD CONSTRAINT "INTELLIGENT_UK1" UNIQUE ("COMES_FROM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "UBD1318"."INTELLIGENT" MODIFY ("LANGUAGE" NOT NULL ENABLE);
  ALTER TABLE "UBD1318"."INTELLIGENT" MODIFY ("COMES_FROM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPECIE
--------------------------------------------------------

  ALTER TABLE "UBD1318"."SPECIE" ADD CONSTRAINT "SPECIE_CHK1" CHECK (TYPE IN('NOMAD', 'SEDENTARY')) ENABLE;
  ALTER TABLE "UBD1318"."SPECIE" ADD CONSTRAINT "SPECIE_CHK2" CHECK ((TYPE='NOMAD' AND (CHARACTER='WARRIOR' OR CHARACTER='PACIFIC') AND CHARACTER IS NOT NULL) OR (TYPE='SEDENTARY')
) ENABLE;
  ALTER TABLE "UBD1318"."SPECIE" ADD CONSTRAINT "SPECIE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "UBD1318"."SPECIE" MODIFY ("CONTROLLED_BY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIVES_IN
--------------------------------------------------------

  ALTER TABLE "UBD1318"."LIVES_IN" ADD CONSTRAINT "LIVES_IN_PK" PRIMARY KEY ("SPECIE_ID", "PLANET_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PLANET
--------------------------------------------------------

  ALTER TABLE "UBD1318"."PLANET" ADD CONSTRAINT "PLANET_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_ALUMNOS"  ENABLE;
  ALTER TABLE "UBD1318"."PLANET" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table INTELLIGENT
--------------------------------------------------------

  ALTER TABLE "UBD1318"."INTELLIGENT" ADD CONSTRAINT "SPECIE_IS_A_FK" FOREIGN KEY ("SPECIE")
	  REFERENCES "UBD1318"."SPECIE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVES_IN
--------------------------------------------------------

  ALTER TABLE "UBD1318"."LIVES_IN" ADD CONSTRAINT "PLANET_ID_FK" FOREIGN KEY ("PLANET_ID")
	  REFERENCES "UBD1318"."PLANET" ("ID") ENABLE;
  ALTER TABLE "UBD1318"."LIVES_IN" ADD CONSTRAINT "SPECIE_ID_FK" FOREIGN KEY ("SPECIE_ID")
	  REFERENCES "UBD1318"."SPECIE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SPECIE
--------------------------------------------------------

  ALTER TABLE "UBD1318"."SPECIE" ADD CONSTRAINT "INTELLIGENT_CONTROLLED_FK" FOREIGN KEY ("CONTROLLED_BY")
	  REFERENCES "UBD1318"."INTELLIGENT" ("SPECIE") ENABLE;
