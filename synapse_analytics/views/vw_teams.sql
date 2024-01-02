SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    VIEW [tod].[vw_teams] AS
SELECT
     *
FROM
    OPENROWSET(
        BULK 'https://tokyoolymicdata.dfs.core.windows.net/tokyo-olymic-data/transformed-data/teams/part-00000-tid-2067390000208365711-ea2fe765-52a8-47df-b891-2e8af95b8cb6-40-1-c000.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]
GO
