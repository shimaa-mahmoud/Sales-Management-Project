SELECT p.[productkey],
       p.[productalternatekey]          AS ProductItemCode,
       p.[englishproductname]           AS [Product Name],
       ps.englishproductsubcategoryname AS [Sub Category],
       -- Joined in from Sub Category Table
       pc.englishproductcategoryname    AS [Product Category],
       -- Joined in from Category Table 
       p.[color]                        AS [Product Color],
       p.[size]                         AS [Product Size],
       p.[productline]                  AS [Product Line],
       p.[modelname]                    AS [Product Model Name],
       p.[englishdescription]           AS [Product Description],
       Isnull (p.status, 'Outdated')    AS [Product Status]
FROM   [AdventureWorksDW2019].[dbo].[dimproduct] AS p
       LEFT JOIN dbo.dimproductsubcategory AS ps
              ON ps.productsubcategorykey = p.productsubcategorykey
       LEFT JOIN dbo.dimproductcategory AS pc
              ON ps.productcategorykey = pc.productcategorykey
ORDER  BY p.productkey ASC 