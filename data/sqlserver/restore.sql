RESTORE DATABASE AdventureWorksDW2019
    FROM DISK = '/var/opt/mssql/data/AdventureWorksDW2019.bak'
    WITH MOVE 'AdventureWorksDW2019' TO '/var/opt/mssql/data/AdventureWorksDW2019.mdf',
    MOVE 'AdventureWorksDW2019_Log' TO '/var/opt/mssql/data/AdventureWorksDW2019_log.ldf',
    REPLACE;
-- docker exec -it sqlserver_pyspark /bin/bash    -- to access the sql server file system