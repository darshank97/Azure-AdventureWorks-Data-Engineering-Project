--CALENDER
CREATE VIEW gold.calender
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.dfs.core.windows.net/silver/Calender/',
        FORMAT = 'PARQUET'
    )q1;

--CUSTOMERS
CREATE VIEW gold.customers
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.dfs.core.windows.net/silver/Customers/',
        FORMAT = 'PARQUET'
    )q1;

--PRODUCT CATEGORIES
CREATE VIEW gold.prod_cat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.blob.core.windows.net/silver/Product Category/',
        FORMAT = 'PARQUET'
    )q1;

--PRODUCT SUBCATEGORIES
CREATE VIEW gold.prod_subcat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.dfs.core.windows.net/silver/Product Subcategories/',
        FORMAT = 'PARQUET'
    )q1;

--PRODUCTS
CREATE VIEW gold.products
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.dfs.core.windows.net/silver/Products/',
        FORMAT = 'PARQUET'
    )q1;

--RETURNS
CREATE VIEW gold.returns
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.dfs.core.windows.net/silver/Returns/',
        FORMAT = 'PARQUET'
    )q1;

--SALES
CREATE VIEW gold.sales
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.dfs.core.windows.net/silver/Sales/',
        FORMAT = 'PARQUET'
    )q1;

--TERRITORIES
CREATE VIEW gold.territories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://storagedatalake092025.dfs.core.windows.net/silver/Territories/',
        FORMAT = 'PARQUET'
    )q1;
