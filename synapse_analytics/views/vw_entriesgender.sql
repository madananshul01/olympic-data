SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    VIEW [tod].[vw_entriesgender] AS
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://tokyoolymicdata.dfs.core.windows.net/tokyo-olymic-data/transformed-data/entriesgender/part-00000-tid-3782823138193391712-71b4c080-7d7e-47e2-adbb-d6e4ab5afb76-36-1-c000.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]
GO
