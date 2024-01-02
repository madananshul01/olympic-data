SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- This is auto-generated code
CREATE    VIEW [tod].[vw_medals] AS
SELECT
     *
FROM
    OPENROWSET(
        BULK 'https://tokyoolymicdata.dfs.core.windows.net/tokyo-olymic-data/transformed-data/medals/part-00000-tid-6520202541992494688-b4f23a84-4cc7-4321-9056-2b86f368d1ab-38-1-c000.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]
GO
