--liquibase formatted sql

--run this in DBeaver before deploying anything else.
--CREATE DATABASE adeelDB WITH LOG MODE ANSI;
--DROP DATABASE adeelDB

--changeset amalik:test_table1
CREATE TABLE test_table1 (test_id INT, test_column INT, PRIMARY KEY (test_id));
--rollback DROP TABLE test_table1;

--changeset amalik:test_table2
CREATE TABLE test_table2 (test_id INT, test_column INT, PRIMARY KEY (test_id));
--rollback DROP TABLE test_table2;

--changeset amalik:test_table3
CREATE TABLE test_table3 (test_id INT, test_column INT, PRIMARY KEY (test_id));
--rollback DROP TABLE test_table3;

--changeset amalik:raise_prices splitStatements:false
CREATE PROCEDURE raise_prices ( per_cent INT)
        UPDATE stock SET unit_price = unit_price + (unit_price * (per_cent/100) );
END PROCEDURE;
--rollback drop procedure raise_prices;

