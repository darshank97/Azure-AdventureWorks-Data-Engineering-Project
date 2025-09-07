CREATE MASTER KEY ENCRYPTION BY PASSWORD ='*********';

drop DATABASE SCOPED CREDENTIAL cred_dk
CREATE DATABASE SCOPED CREDENTIAL cred_dk
WITH IDENTITY = 'Managed Identity';

DROP EXTERNAL DATA SOURCE source_gold
DROP EXTERNAL DATA SOURCE source_silver
CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://storagedatalake092025.dfs.core.windows.net/silver/',
    CREDENTIAL= cred_dk
)   

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://storagedatalake092025.dfs.core.windows.net/gold/',
    CREDENTIAL= cred_dk
)   

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec' 
)

--CREATE EXTERNAL TABLES
--Sales
CREATE EXTERNAL TABLE gold.sales_ext
WITH
(
    LOCATION = 'Sales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.sales;

--Calender
CREATE EXTERNAL TABLE gold.calender_ext
WITH
(
    LOCATION = 'Calender',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.calender;

--Customers
CREATE EXTERNAL TABLE gold.customers_ext
WITH
(
    LOCATION = 'Customers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.customers;

--Product Category
CREATE EXTERNAL TABLE gold.prod_cat_ext
WITH
(
    LOCATION = 'Product Category',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.prod_cat;

--Product Subcategories
CREATE EXTERNAL TABLE gold.prod_subcat_ext
WITH
(
    LOCATION = 'Product Subcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.prod_subcat;

--Products
CREATE EXTERNAL TABLE gold.prod_ext
WITH
(
    LOCATION = 'Products',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.products;

--Territories
CREATE EXTERNAL TABLE gold.territories_ext
WITH
(
    LOCATION = 'Territories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.territories;

--Returns
CREATE EXTERNAL TABLE gold.returns_ext
WITH
(
    LOCATION = 'Returns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT *  FROM gold.returns;