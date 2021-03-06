--
-- database_schema_18-3.sql
--
-- Version: $Revision$
--
-- Date:    $Date: 2012-05-29
--
-- The contents of this file are subject to the license and copyright
-- detailed in the LICENSE and NOTICE files at the root of the source
-- tree and available online at
--
-- http://www.dspace.org/license/
--

--
-- SQL commands to upgrade the database schema of a live DSpace 1.8 or 1.8.x
-- to the DSpace 3 database schema
--
-- DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST.
-- DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST.
-- DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST. DUMP YOUR DATABASE FIRST.
--

-------------------------------------------
-- Add support for DOIs (table and seq.) --
-------------------------------------------

CREATE SEQUENCE doi_seq;

CREATE TABLE Doi
(
  doi_id           INTEGER PRIMARY KEY,
  doi              VARCHAR(256) UNIQUE,
  resource_type_id INTEGER,
  resource_id      INTEGER,
  status           INTEGER
);

-- index by handle, commonly looked up
CREATE INDEX doi_doi_idx ON Doi(doi);
-- index by resource id and resource type id
CREATE INDEX doi_resource_id_and_type_idx ON Doi(resource_id, resource_type_id);

-------------------------------------------
-- New columns and longer hash for salted password hashing DS-861 --
-------------------------------------------

CREATE SEQUENCE webapp_seq;

CREATE TABLE Webapp
(
    webapp_id INTEGER NOT NULL PRIMARY KEY,
    AppName VARCHAR(32),
    URL VARCHAR,
    Started TIMESTAMP,
    isUI INTEGER
);
