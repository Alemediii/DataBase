-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-11-03 16:41:56 CET
--   sitio:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



CREATE TABLESPACE ts_alumnos 
--  WARNING: Tablespace has no data files defined 
 LOGGING ONLINE
    EXTENT MANAGEMENT LOCAL AUTOALLOCATE
FLASHBACK ON;

CREATE USER ubd1318 IDENTIFIED BY ACCOUNT UNLOCK ;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ubd1318.erasmus (
    name       VARCHAR2(10 CHAR) NOT NULL,
    country    VARCHAR2(10 CHAR) NOT NULL,
    dateofjoin DATE
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.erasmus_pk ON
    ubd1318.erasmus (
        name
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

CREATE UNIQUE INDEX ubd1318.erasmus_pkv1 ON
    ubd1318.erasmus (
        country
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.erasmus
    ADD CONSTRAINT erasmus_pk PRIMARY KEY ( name )
        USING INDEX ubd1318.erasmus_pk;

ALTER TABLE ubd1318.erasmus
    ADD CONSTRAINT erasmus_pkv1 UNIQUE ( country )
        USING INDEX ubd1318.erasmus_pkv1;

CREATE TABLE erasmus_mandatory (
    country              VARCHAR2(10 CHAR) NOT NULL,
    dateofjoin           BLOB,
    erasmus_mandatory_id NUMBER NOT NULL
)
LOGGING;

ALTER TABLE erasmus_mandatory ADD CONSTRAINT erasmus_mandatory_pk PRIMARY KEY ( erasmus_mandatory_id );

CREATE TABLE erasmus_mixed (
    country          VARCHAR2(10 CHAR) NOT NULL,
    dateofjoin       DATE,
    erasmus_mixed_id NUMBER NOT NULL
)
LOGGING;

ALTER TABLE erasmus_mixed ADD CONSTRAINT erasmus_mixed_pk PRIMARY KEY ( erasmus_mixed_id );

CREATE TABLE erasmus_optional (
    country  VARCHAR2(10 CHAR) NOT NULL,
    datejoin DATE
)
LOGGING;

ALTER TABLE erasmus_optional ADD CONSTRAINT erasmus_optional_pk PRIMARY KEY ( country );

CREATE TABLE eropt_stman (
    erasmus_mixed_erasmus_mixed_id NUMBER NOT NULL,
    student_mixed_name             VARCHAR2(10 CHAR) NOT NULL
)
LOGGING;

ALTER TABLE eropt_stman ADD CONSTRAINT eropt_stman_pk PRIMARY KEY ( erasmus_mixed_erasmus_mixed_id,
                                                                    student_mixed_name );

CREATE TABLE erstmand (
    erasmus_mandatory_erasmus_mandatory_id NUMBER NOT NULL,
    student_mandatory_name                 VARCHAR2(10 CHAR) NOT NULL
)
LOGGING;

ALTER TABLE erstmand ADD CONSTRAINT erstmand_pk PRIMARY KEY ( erasmus_mandatory_erasmus_mandatory_id,
                                                              student_mandatory_name );

CREATE TABLE erstopr (
    erasmus_optional_country VARCHAR2(10 CHAR) NOT NULL,
    student_optional_name    VARCHAR2(10 CHAR) NOT NULL
)
LOGGING;

ALTER TABLE erstopr ADD CONSTRAINT erstopr_pk PRIMARY KEY ( erasmus_optional_country,
                                                            student_optional_name );

CREATE TABLE ubd1318.student (
    name  VARCHAR2(10 CHAR) NOT NULL,
    age   NUMBER(*, 0) NOT NULL,
    photo BLOB
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY
    LOB ( photo ) STORE AS SECUREFILE (
        TABLESPACE ts_alumnos
        STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 BUFFER_POOL DEFAULT )
        CHUNK 8192
        RETENTION
        ENABLE STORAGE IN ROW
        NOCACHE LOGGING
    );

CREATE UNIQUE INDEX ubd1318.student_pk ON
    ubd1318.student (
        name
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.student
    ADD CONSTRAINT student_pk PRIMARY KEY ( name )
        USING INDEX ubd1318.student_pk;

CREATE TABLE student_mandatory (
    name  VARCHAR2(10 CHAR) NOT NULL,
    age   INTEGER NOT NULL,
    photo BLOB
)
LOGGING;

ALTER TABLE student_mandatory ADD CONSTRAINT student_mandatory_pk PRIMARY KEY ( name );

CREATE TABLE student_mixed (
    name  VARCHAR2(10 CHAR) NOT NULL,
    age   INTEGER NOT NULL,
    photo BLOB
)
LOGGING;

ALTER TABLE student_mixed ADD CONSTRAINT student_mixed_pk PRIMARY KEY ( name );

CREATE TABLE student_optional (
    name  VARCHAR2(10 CHAR) NOT NULL,
    age1  INTEGER NOT NULL,
    photo BLOB
)
LOGGING;

ALTER TABLE student_optional ADD CONSTRAINT student_optional_pk PRIMARY KEY ( name );

ALTER TABLE ubd1318.erasmus
    ADD CONSTRAINT erasmus_student_fk FOREIGN KEY ( name )
        REFERENCES ubd1318.student ( name )
    NOT DEFERRABLE;

ALTER TABLE eropt_stman
    ADD CONSTRAINT eropt_stman_erasmus_mixed_fk FOREIGN KEY ( erasmus_mixed_erasmus_mixed_id )
        REFERENCES erasmus_mixed ( erasmus_mixed_id )
    NOT DEFERRABLE;

ALTER TABLE eropt_stman
    ADD CONSTRAINT eropt_stman_student_mixed_fk FOREIGN KEY ( student_mixed_name )
        REFERENCES student_mixed ( name )
    NOT DEFERRABLE;

ALTER TABLE erstmand
    ADD CONSTRAINT erstmand_erasmus_mandatory_fk FOREIGN KEY ( erasmus_mandatory_erasmus_mandatory_id )
        REFERENCES erasmus_mandatory ( erasmus_mandatory_id )
    NOT DEFERRABLE;

ALTER TABLE erstmand
    ADD CONSTRAINT erstmand_student_mandatory_fk FOREIGN KEY ( student_mandatory_name )
        REFERENCES student_mandatory ( name )
    NOT DEFERRABLE;

ALTER TABLE erstopr
    ADD CONSTRAINT erstopr_erasmus_optional_fk FOREIGN KEY ( erasmus_optional_country )
        REFERENCES erasmus_optional ( country )
    NOT DEFERRABLE;

ALTER TABLE erstopr
    ADD CONSTRAINT erstopr_student_optional_fk FOREIGN KEY ( student_optional_name )
        REFERENCES student_optional ( name )
    NOT DEFERRABLE;

CREATE SEQUENCE erasmus_mandatory_erasmus_mandatory_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER erasmus_mandatory_erasmus_mandatory_id_trg BEFORE
    INSERT ON erasmus_mandatory
    FOR EACH ROW
    WHEN ( new.erasmus_mandatory_id IS NULL )
BEGIN
    :new.erasmus_mandatory_id := erasmus_mandatory_erasmus_mandatory_id_seq.nextval;
END;
/

CREATE SEQUENCE erasmus_mixed_erasmus_mixed_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER erasmus_mixed_erasmus_mixed_id_trg BEFORE
    INSERT ON erasmus_mixed
    FOR EACH ROW
    WHEN ( new.erasmus_mixed_id IS NULL )
BEGIN
    :new.erasmus_mixed_id := erasmus_mixed_erasmus_mixed_id_seq.nextval;
END;
/



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             3
-- ALTER TABLE                             19
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           2
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          2
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        1
-- CREATE USER                              1
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 1
