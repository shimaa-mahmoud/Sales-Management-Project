SELECT [datekey],
       [fulldatealternatekey]      AS Date,
       [englishdaynameofweek]      AS Day,
       [daynumberofmonth],
       [weeknumberofyear],
       [englishmonthname]          AS Month,
       LEFT([englishmonthname], 3) AS ShortMon,
       [monthnumberofyear]         AS MonthNumber,
       [calendarquarter]           AS Quarter,
       [calendaryear]              AS Year
FROM   [AdventureWorksDW2019].[dbo].[dimdate] 