-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-11-03 15:42:11 CET
--   sitio:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



CREATE SMALLFILE TABLESPACE ts_alumnos 
--  WARNING: Tablespace has no data files defined 
 LOGGING ONLINE DEFAULT NOCOMPRESS NO INMEMORY
    EXTENT MANAGEMENT LOCAL AUTOALLOCATE
FLASHBACK ON 
;

CREATE USER ubd1318 
    IDENTIFIED BY
    DEFAULT TABLESPACE ts_alumnos
    QUOTA 10485760 ON ts_alumnos
    ACCOUNT UNLOCK;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE ubd1318.article (
    code_article VARCHAR2(20 BYTE) NOT NULL,
    headline     VARCHAR2(20 BYTE) NOT NULL,
    subtitle     VARCHAR2(20 BYTE),
    text         VARCHAR2(20 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.article_pk ON
    ubd1318.article (
        code_article
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.article
    ADD CONSTRAINT article_pk PRIMARY KEY ( code_article )
        USING INDEX ubd1318.article_pk;

CREATE TABLE ubd1318.composed_of (
    newspaper_name VARCHAR2(20 BYTE) NOT NULL,
    date_of        VARCHAR2(20 BYTE) NOT NULL,
    ident          VARCHAR2(20 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.composed_of_pk ON
    ubd1318.composed_of (
        newspaper_name
    ASC,
        date_of
    ASC,
        ident
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.composed_of
    ADD CONSTRAINT composed_of_pk PRIMARY KEY ( newspaper_name,
                                                date_of,
                                                ident )
        USING INDEX ubd1318.composed_of_pk;

CREATE TABLE ubd1318.editor (
    phone VARCHAR2(20 BYTE) NOT NULL,
    web   VARCHAR2(20 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE TABLE ubd1318.example (
    date_of        VARCHAR2(20 BYTE) NOT NULL,
    newspaper_name VARCHAR2(20 BYTE) NOT NULL,
    price          VARCHAR2(20 BYTE),
    collection     VARCHAR2(20 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.example_pk ON
    ubd1318.example (
        date_of
    ASC,
        newspaper_name
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.example
    ADD CONSTRAINT example_pk PRIMARY KEY ( date_of,
                                            newspaper_name )
        USING INDEX ubd1318.example_pk;

CREATE TABLE ubd1318.format (
    font   VARCHAR2(20 BYTE),
    height VARCHAR2(20 BYTE),
    width  VARCHAR2(20 BYTE),
    code   VARCHAR2(20 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.format_pk ON
    ubd1318.format (
        code
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.format
    ADD CONSTRAINT format_pk PRIMARY KEY ( code )
        USING INDEX ubd1318.format_pk;

CREATE TABLE ubd1318.journalist (
    id          VARCHAR2(20 BYTE) NOT NULL,
    name        VARCHAR2(20 BYTE),
    date_birth  DATE,
    date_hiring DATE,
    cvitae      VARCHAR2(20 BYTE),
    email       VARCHAR2(20 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.journalist_id__pk ON
    ubd1318.journalist (
        id
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.journalist
    ADD CONSTRAINT journalist_id__pk PRIMARY KEY ( id )
        USING INDEX ubd1318.journalist_id__pk;

CREATE TABLE ubd1318.page (
    ident       VARCHAR2(20 BYTE) NOT NULL,
    free_space  VARCHAR2(20 BYTE),
    occup_space VARCHAR2(20 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.page_pk ON
    ubd1318.page (
        ident
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.page
    ADD CONSTRAINT page_pk PRIMARY KEY ( ident )
        USING INDEX ubd1318.page_pk;

CREATE TABLE ubd1318.section (
    code          VARCHAR2(20 BYTE) NOT NULL,
    date_creation DATE NOT NULL,
    name          VARCHAR2(20 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE ts_alumnos LOGGING
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
NO INMEMORY;

CREATE UNIQUE INDEX ubd1318.section_pk ON
    ubd1318.section (
        code
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

CREATE UNIQUE INDEX ubd1318.section_uk1 ON
    ubd1318.section (
        name
    ASC )
        TABLESPACE ts_alumnos PCTFREE 10
            STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT )
        LOGGING;

ALTER TABLE ubd1318.section
    ADD CONSTRAINT section_pk PRIMARY KEY ( code )
        USING INDEX ubd1318.section_pk;

ALTER TABLE ubd1318.section
    ADD CONSTRAINT section_uk1 UNIQUE ( name )
        USING INDEX ubd1318.section_uk1;

CREATE TABLE table_1 
    
    -- No Columns 

LOGGING;

ALTER TABLE ubd1318.composed_of
    ADD CONSTRAINT example_date_fk1 FOREIGN KEY ( date_of,
                                                  newspaper_name )
        REFERENCES ubd1318.example ( date_of,
                                     newspaper_name )
    NOT DEFERRABLE;

ALTER TABLE ubd1318.composed_of
    ADD CONSTRAINT page_ident_fk FOREIGN KEY ( ident )
        REFERENCES ubd1318.page ( ident )
    NOT DEFERRABLE;

ALTER TABLE ubd1318.page
    ADD CONSTRAINT page_section_fk1 FOREIGN KEY ( ident )
        REFERENCES ubd1318.section ( code )
    NOT DEFERRABLE;

ALTER TABLE ubd1318.section
    ADD CONSTRAINT section_journalist_fk1 FOREIGN KEY ( name )
        REFERENCES ubd1318.journalist ( id )
    NOT DEFERRABLE;



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             8
-- ALTER TABLE                             12
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
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
-- CREATE SEQUENCE                          0
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
