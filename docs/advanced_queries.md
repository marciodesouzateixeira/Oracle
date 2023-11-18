[Voltar](../README.md)

# Advanced queries

1. Search for deleted IDs: let's create some queries to display IDs that have been deleted from your table:

Let's start with a table with 5 records with the following IDs: 3, 4, 12, 16 and 19

And now we may have two needs:
First fetch all lost IDs starting from code 1
Second option is to identify the missing IDs between the smallest and largest IDs in my table

First option:
```
SELECT DISTINCT LEVEL AS MissingProductId
FROM dual
CONNECT BY LEVEL <= (SELECT MAX(productid) FROM products_bkp)
MINUS
SELECT productid
FROM products_bkp;
```

Second option:
```
SELECT DISTINCT LEVEL + (SELECT min(productid) FROM products_bkp) AS MissingProductId
FROM dual
CONNECT BY LEVEL <= (SELECT MAX(productid) - min(productid) FROM products_bkp)
MINUS
SELECT productid
FROM products_bkp;
```
