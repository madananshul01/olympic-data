SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- This is auto-generated code
CREATE    VIEW [tod].[vw_athletes] AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://tokyoolymicdata.dfs.core.windows.net/tokyo-olymic-data/transformed-data/athletes/part-00000-tid-2149818365994902938-21fc6f98-3c02-49ad-8533-b07464181c3f-32-1-c000.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]
GO
