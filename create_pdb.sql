-- Crear el PDB

BEGIN
EXECUTE IMMEDIATE 'CREATE PLUGGABLE DATABASE "PDBDEVALI"
ADMIN USER "admin" IDENTIFIED BY "Oracle18*"
STORAGE ( MAXSIZE UNLIMITED MAX_SHARED_TEMP_SIZE UNLIMITED )
TEMPFILE REUSE
FILE_NAME_CONVERT=(''/home/u01/app/oracle/oradata/orcl/pdbseed/'',''/home/u01/app/oracle/oradata/orcl/pdbdevali/'')';
END;
/
ALTER PLUGGABLE DATABASE "PDBDEVALI" OPEN READ WRITE
/
