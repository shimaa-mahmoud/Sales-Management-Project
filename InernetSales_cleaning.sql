SELECT [productkey],
       [orderdatekey],
       [duedatekey],
       [shipdatekey],
       [customerkey],
       [salesordernumber],
       [salesamount]
FROM   [AdventureWorksDW2019].[dbo].[factinternetsales]
ORDER  BY orderdatekey ASC 