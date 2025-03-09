-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-02 12:20:22 CEST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE employee (
    name            VARCHAR2(20 CHAR),
    passport_number VARCHAR2(8 CHAR),
    nationality     VARCHAR2(15 CHAR),
    date_of_birth   DATE,
    picture         BLOB,
    unique_id       VARCHAR2(15 CHAR) NOT NULL,
    cellphone       VARCHAR2(15 CHAR)
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( unique_id );

CREATE TABLE event (
    "date"         DATE NOT NULL,
    location       VARCHAR2(20 CHAR),
    description    VARCHAR2(25 CHAR),
    contact_person VARCHAR2(15 CHAR),
    cellphone      VARCHAR2(15 CHAR),
    email          VARCHAR2(25 CHAR)
);

ALTER TABLE event ADD CONSTRAINT event_pk PRIMARY KEY ( "date" );

CREATE TABLE ofiicial_team (
    bike          VARCHAR2(20 CHAR) NOT NULL,
    specification VARCHAR2(25 CHAR) NOT NULL,
    budget        FLOAT,
    creation_data DATE,
    contact_data  VARCHAR2(15 CHAR),
    wen           VARCHAR2(17 CHAR)
);

ALTER TABLE ofiicial_team ADD CONSTRAINT ofiicial_team_pk PRIMARY KEY ( bike );

ALTER TABLE ofiicial_team ADD CONSTRAINT ofiicial_team_pkv1 UNIQUE ( specification );

CREATE TABLE race (
    circuit            VARCHAR2(17 CHAR),
    "date"             DATE NOT NULL,
    max_elevation      FLOAT NOT NULL,
    min_elevation      FLOAT,
    asphalt_type       VARCHAR2(20 CHAR),
    length             FLOAT,
    records_records_id NUMBER NOT NULL
);

CREATE UNIQUE INDEX race__idx ON
    race (
        records_records_id
    ASC );

ALTER TABLE race ADD CONSTRAINT race_pk PRIMARY KEY ( "date" );

CREATE TABLE records (
    type_of_records FLOAT,
    season          VARCHAR2(5 CHAR),
    rider           VARCHAR2(25),
    bike            VARCHAR2(15 CHAR),
    time            TIMESTAMP WITH TIME ZONE,
    speed           FLOAT,
    records_id      NUMBER NOT NULL
);

COMMENT ON COLUMN records.rider IS
    'We do not set it as a relation with riders, since there is riders, which cannot be on the list';

COMMENT ON COLUMN records.bike IS
    'The same with teams, since new ones come up';

ALTER TABLE records ADD CONSTRAINT records_pk PRIMARY KEY ( records_id );

CREATE TABLE riders (
    name         VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    "number"     INTEGER NOT NULL,
    country      VARCHAR2(10 CHAR) NOT NULL,
    placeofbirth VARCHAR2(15 CHAR),
    dateofbirth  DATE NOT NULL,
    bike         VARCHAR2(10 CHAR) NOT NULL,
    height       INTEGER NOT NULL,
    weight       INTEGER NOT NULL
);

ALTER TABLE riders ADD CONSTRAINT riders_pk PRIMARY KEY ( name );

ALTER TABLE riders ADD CONSTRAINT riders_number_un UNIQUE ( "number" );

CREATE TABLE riders_events (
    riders_name VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL,
    event_date  DATE NOT NULL
);

ALTER TABLE riders_events ADD CONSTRAINT riders_events_pk PRIMARY KEY ( riders_name,
                                                                        event_date );

CREATE TABLE season (
    race_date DATE NOT NULL
);

CREATE UNIQUE INDEX season__idx ON
    season (
        race_date
    ASC );

CREATE TABLE team (
    bike             VARCHAR2(20 CHAR) NOT NULL,
    email            VARCHAR2(20 CHAR),
    postaladress     VARCHAR2(7 CHAR),
    description      CLOB,
    logo             BLOB,
    official_picture BLOB
);

ALTER TABLE team ADD CONSTRAINT team_pk PRIMARY KEY ( bike );

CREATE TABLE team_staff (
    employee_unique_id VARCHAR2(15 CHAR) NOT NULL,
    director_role      VARCHAR2 
--  ERROR: VARCHAR2 size not specified 
     NOT NULL
);

ALTER TABLE team_staff ADD CONSTRAINT team_staff_pk PRIMARY KEY ( employee_unique_id,
                                                                  director_role );

ALTER TABLE ofiicial_team
    ADD CONSTRAINT ofiicial_team_team_fk FOREIGN KEY ( bike )
        REFERENCES team ( bike );

ALTER TABLE race
    ADD CONSTRAINT race_records_fk FOREIGN KEY ( records_records_id )
        REFERENCES records ( records_id );

ALTER TABLE riders_events
    ADD CONSTRAINT riders_events_event_fk FOREIGN KEY ( event_date )
        REFERENCES event ( "date" );

ALTER TABLE riders_events
    ADD CONSTRAINT riders_events_riders_fk FOREIGN KEY ( riders_name )
        REFERENCES riders ( name );

ALTER TABLE season
    ADD CONSTRAINT season_race_fk FOREIGN KEY ( race_date )
        REFERENCES race ( "date" );

ALTER TABLE team_staff
    ADD CONSTRAINT team_staff_employee_fk FOREIGN KEY ( employee_unique_id )
        REFERENCES employee ( unique_id );

CREATE SEQUENCE records_records_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER records_records_id_trg BEFORE
    INSERT ON records
    FOR EACH ROW
    WHEN ( new.records_id IS NULL )
BEGIN
    :new.records_id := records_records_id_seq.nextval;
END;
/



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             2
-- ALTER TABLE                             17
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           1
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
-- CREATE SEQUENCE                          1
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
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
-- ERRORS                                   3
-- WARNINGS                                 0
