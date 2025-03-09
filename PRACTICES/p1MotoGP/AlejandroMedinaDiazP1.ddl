-- Generado por Oracle SQL Developer Data Modeler 23.1.0.087.0806
--   en:        2024-10-29 12:19:04 CET
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE circuit (
    circuitname             VARCHAR2(15 CHAR) NOT NULL,
    "Date"                  DATE,
    country                 VARCHAR2(15 CHAR) NOT NULL,
    city                    VARCHAR2(15 CHAR) NOT NULL,
    leftcurves              VARCHAR2(15 CHAR) NOT NULL,
    rightcurves             VARCHAR2(15 CHAR) NOT NULL,
    race_riders_nombre      VARCHAR2(15 CHAR) NOT NULL,
    zona_zone               VARCHAR2(10 CHAR) NOT NULL,
    zona_time_lap           INTEGER NOT NULL,
    zona_time_riders_nombre VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE circuit
    ADD CONSTRAINT circuit_pk PRIMARY KEY ( circuitname,
                                            race_riders_nombre,
                                            zona_zone,
                                            zona_time_lap,
                                            zona_time_riders_nombre );

ALTER TABLE circuit ADD CONSTRAINT circuit_date_un UNIQUE ( "Date" );

CREATE TABLE events (
    dateevent   DATE NOT NULL,
    description CLOB,
    location    VARCHAR2(15 CHAR),
    "Number"    VARCHAR2(10),
    contact     VARCHAR2(10 CHAR)
);

ALTER TABLE events ADD CONSTRAINT events_pk PRIMARY KEY ( dateevent );

CREATE TABLE official_team (
    teamname     VARCHAR2(15) NOT NULL,
    budget       INTEGER,
    creationdate DATE,
    contactdata  VARCHAR2(15 CHAR),
    homefactory  VARCHAR2(15 CHAR),
    weblink      VARCHAR2(15 CHAR)
);

ALTER TABLE official_team ADD CONSTRAINT official_team_pk PRIMARY KEY ( teamname );

CREATE TABLE race (
    fronttyre     VARCHAR2(15 CHAR),
    backtyre      VARCHAR2(15 CHAR),
    crash         VARCHAR2(5 CHAR),
    points        INTEGER,
    riders_nombre VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE race ADD CONSTRAINT race_pk PRIMARY KEY ( riders_nombre );

CREATE TABLE relation_17 (
    riders_nombre  VARCHAR2(15 CHAR) NOT NULL,
    riders_nombre1 VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE relation_17 ADD CONSTRAINT relation_17_pk PRIMARY KEY ( riders_nombre,
                                                                    riders_nombre1 );

CREATE TABLE relation_2 (
    riders_nombre    VARCHAR2(15 CHAR) NOT NULL,
    events_dateevent DATE NOT NULL
);

ALTER TABLE relation_2 ADD CONSTRAINT relation_2_pk PRIMARY KEY ( riders_nombre,
                                                                  events_dateevent );

CREATE TABLE riders (
    nombre        VARCHAR2(15 CHAR) NOT NULL,
    "Number"      INTEGER,
    bike          VARCHAR2(15 CHAR),
    placeofbirth  VARCHAR2(15 CHAR),
    dateofbirth   DATE,
    height        INTEGER,
    weigth        INTEGER,
    team_teamname VARCHAR2(15)
);

ALTER TABLE riders ADD CONSTRAINT riders_pk PRIMARY KEY ( nombre );

ALTER TABLE riders ADD CONSTRAINT riders_number_un UNIQUE ( "Number" );

CREATE TABLE team (
    teamname     VARCHAR2(15) NOT NULL,
    bike         VARCHAR2(10 CHAR),
    web          VARCHAR2(15 CHAR) NOT NULL,
    postaladress VARCHAR2(10 CHAR),
    email        VARCHAR2(10 CHAR),
    logo         BLOB,
    picture      BLOB,
    teamstaff_id VARCHAR2(15 CHAR) NOT NULL
);

CREATE UNIQUE INDEX team__idx ON
    team (
        teamstaff_id
    ASC );

ALTER TABLE team ADD CONSTRAINT team_pk PRIMARY KEY ( teamname );

CREATE TABLE teamstaff (
    id             VARCHAR2(15 CHAR) NOT NULL,
    passportnumber VARCHAR2(15 CHAR),
    nationality    VARCHAR2(10 CHAR),
    name           VARCHAR2(15 CHAR),
    dateofbirth    DATE,
    team_teamname  VARCHAR2(15) NOT NULL
);

ALTER TABLE teamstaff ADD CONSTRAINT teamstaff_pk PRIMARY KEY ( id );

ALTER TABLE teamstaff ADD CONSTRAINT teamstaff_passportnumber_un UNIQUE ( passportnumber );

ALTER TABLE teamstaff ADD CONSTRAINT teamstaff_nationality_un UNIQUE ( nationality );

CREATE TABLE time (
    lap           INTEGER NOT NULL,
    time          DATE,
    riders_nombre VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE time ADD CONSTRAINT time_pk PRIMARY KEY ( lap,
                                                      riders_nombre );

CREATE TABLE zona (
    zone               VARCHAR2(10 CHAR) NOT NULL,
    elevation          INTEGER,
    lentgh             INTEGER,
    speed              FLOAT,
    tracktype          VARCHAR2(15 CHAR),
    time_lap           INTEGER NOT NULL,
    time_riders_nombre VARCHAR2(15 CHAR) NOT NULL
);

ALTER TABLE zona
    ADD CONSTRAINT zona_pk PRIMARY KEY ( zone,
                                         time_lap,
                                         time_riders_nombre );

ALTER TABLE circuit
    ADD CONSTRAINT circuit_race_fk FOREIGN KEY ( race_riders_nombre )
        REFERENCES race ( riders_nombre );

ALTER TABLE circuit
    ADD CONSTRAINT circuit_zona_fk FOREIGN KEY ( zona_zone,
                                                 zona_time_lap,
                                                 zona_time_riders_nombre )
        REFERENCES zona ( zone,
                          time_lap,
                          time_riders_nombre );

ALTER TABLE official_team
    ADD CONSTRAINT official_team_team_fk FOREIGN KEY ( teamname )
        REFERENCES team ( teamname );

ALTER TABLE race
    ADD CONSTRAINT race_riders_fk FOREIGN KEY ( riders_nombre )
        REFERENCES riders ( nombre );

ALTER TABLE relation_17
    ADD CONSTRAINT relation_17_riders_fk FOREIGN KEY ( riders_nombre )
        REFERENCES riders ( nombre );

ALTER TABLE relation_17
    ADD CONSTRAINT relation_17_riders_fkv1 FOREIGN KEY ( riders_nombre1 )
        REFERENCES riders ( nombre );

ALTER TABLE relation_2
    ADD CONSTRAINT relation_2_events_fk FOREIGN KEY ( events_dateevent )
        REFERENCES events ( dateevent );

ALTER TABLE relation_2
    ADD CONSTRAINT relation_2_riders_fk FOREIGN KEY ( riders_nombre )
        REFERENCES riders ( nombre );

ALTER TABLE riders
    ADD CONSTRAINT riders_team_fk FOREIGN KEY ( team_teamname )
        REFERENCES team ( teamname );

ALTER TABLE team
    ADD CONSTRAINT team_teamstaff_fk FOREIGN KEY ( teamstaff_id )
        REFERENCES teamstaff ( id );

ALTER TABLE teamstaff
    ADD CONSTRAINT teamstaff_team_fk FOREIGN KEY ( team_teamname )
        REFERENCES team ( teamname );

ALTER TABLE time
    ADD CONSTRAINT time_riders_fk FOREIGN KEY ( riders_nombre )
        REFERENCES riders ( nombre );

ALTER TABLE zona
    ADD CONSTRAINT zona_time_fk FOREIGN KEY ( time_lap,
                                              time_riders_nombre )
        REFERENCES time ( lap,
                          riders_nombre );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             1
-- ALTER TABLE                             28
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
-- ERRORS                                   0
-- WARNINGS                                 0
