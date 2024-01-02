SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- This is auto-generated code
CREATE    VIEW [tod].[vw_coaches] AS
SELECT
*
FROM
    OPENROWSET(
        BULK 'https://tokyoolymicdata.dfs.core.windows.net/tokyo-olymic-data/transformed-data/coaches/part-00000-tid-4610249809076175929-fd4a9213-9bff-4e50-98b2-8995c4597a2e-34-1-c000.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]
GO
