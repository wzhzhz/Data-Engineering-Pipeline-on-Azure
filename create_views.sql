CREATE VIEW gold_calendar 
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS Query1


CREATE VIEW gold_prod_categories
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) as Query1


CREATE VIEW gold_prod_subcategories
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) as Query1


CREATE VIEW gold_products
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) as Query1



CREATE VIEW gold_returns
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) as Query1



CREATE VIEW gold_sales
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) as Query1



CREATE VIEW gold_territories
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) as Query1


CREATE VIEW gold_customers
AS 
SELECT *
FROM OPENROWSET(
    BULK 'https://storage1data1lake.blob.core.windows.net/silver/AdventureWorks_Customer/',
    FORMAT = 'PARQUET'
) as Query1