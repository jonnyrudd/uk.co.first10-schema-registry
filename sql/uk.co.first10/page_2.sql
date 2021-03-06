-- AUTO-GENERATED BY schema-ddl DO NOT EDIT
-- Generator: schema-ddl 0.3.1
-- Generated: 2016-07-11 09:23

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.uk_co_first10_page_2 (
    "schema_vendor"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"         VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"      VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"             CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"         TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"            VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"            VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"          VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "page_categories"     VARCHAR(255)  ENCODE LZO,
    "page_date"           TIMESTAMP     ENCODE LZO,
    "page_id"             BIGINT        ENCODE LZO,
    "page_title"          VARCHAR(255)  ENCODE LZO,
    "page_type"           VARCHAR(255)  ENCODE LZO,
    "page_type_2"         VARCHAR(255)  ENCODE LZO,
    "visitor_login_state" VARCHAR(40)   ENCODE LZO,
    "visitor_type"        VARCHAR(40)   ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.uk_co_first10_page_2 IS 'iglu:uk.co.first10/page/jsonschema/2-0-0';
